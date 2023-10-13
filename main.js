let  instance

async function init() {
  const response = await fetch("./outf.wasm");
  const buffer = await response.arrayBuffer();
  const obj = await WebAssembly.instantiate(buffer);
  instance = obj.instance;
}

init();
const canvas = document.getElementById("mycanvas");
const svg = document.getElementById("mysvg");
const ctx = canvas.getContext("2d");
ctx.fillStyle = "#55555520";
ctx.fillRect(0, 0, canvas.width, canvas.height);
ctx.fillStyle = "black";
var mousedown_init = false;
var points_xvals = [];
var points_yvals = [];

canvas.addEventListener("mousedown", function (e) {
  mousedown_init = true;
  ctx.moveTo(e.x, e.y);
});

canvas.addEventListener("touchstart", function (e) {
  e.preventDefault()
  mousedown_init = true;
  ctx.moveTo(e.touches[0].clientX, e.touches[0].clientY);
});

canvas.addEventListener("mousemove", function (e) {
  e.preventDefault()
  if (mousedown_init) {
    ctx.lineTo(e.x, e.y);
    points_xvals.push(e.x);
    points_yvals.push(e.y);
    ctx.stroke();
  }
});

canvas.addEventListener("touchmove", function (e) {
  e.preventDefault()
  if (mousedown_init) {
    ctx.lineTo(e.changedTouches[0].clientX, e.changedTouches[0].clientY);
    points_xvals.push(e.changedTouches[0].clientX);
    points_yvals.push(e.changedTouches[0].clientY);
    ctx.stroke();
  }
});

canvas.addEventListener("mouseup", function (e) {
  mousedown_init = false;
  ctx.stroke();
  ctx.moveTo(e.x, e.y);
  let [ctrlp, endp] = learn(points_xvals, points_yvals);
  addpathtosvg(ctrlp, endp);
  instance.exports.freeall();
  points_xvals = [];
  points_yvals = [];
});

canvas.addEventListener("touchend", function (e) {
  e.preventDefault()
  mousedown_init = false;
  ctx.stroke();
  ctx.moveTo(e.changedTouches[0].clientX, e.changedTouches[0].clientY);
  let [ctrlp, endp] = learn(points_xvals, points_yvals);
  addpathtosvg(ctrlp, endp);
  instance.exports.freeall();
  points_xvals = [];
  points_yvals = [];
});

canvas.addEventListener("mouseleave", function (e) {
  mousedown_init = false;
});

canvas.addEventListener("touchcancel", function (e) {
  e.preventDefault()
  mousedown_init = false;
});


function make_wasm_double_array(len) {
  const ptr = instance.exports.malloc(len * 8);
  const arr = new Float64Array(instance.exports.memory.buffer, ptr, len);
  return [ptr, arr];
}

/*
 sets up arrays and calls learn
*/
function learn(arrx, arry) {
  let iarrx = arrx.slice(1, arrx.length - 1);
  const [arrx_ptr, arrx_arr] = make_wasm_double_array(iarrx.length);
  arrx_arr.set(iarrx);

  let iarry = arry.slice(1, arry.length - 1);
  const [arry_ptr, arry_arr] = make_wasm_double_array(iarry.length);
  arry_arr.set(iarry);

  const [endp_ptr, endp_arr] = make_wasm_double_array(8);
  endp_arr.set([
    arrx[0],
    arry[0],
    arrx[arrx.length - 1],
    arry[arry.length - 1],
  ]);

  const [ctrlp_ptr, ctrlp_arr] = make_wasm_double_array(8);
  let endp = endp_arr;
  ctrlp_arr.set([
    endp[0] * (1 / 3) + endp[2] * (2 / 3),
    endp[1] * (1 / 3) + endp[3] * (2 / 3),
    endp[0] * (2 / 3) + endp[2] * (1 / 3),
    endp[1] * (2 / 3) + endp[3] * (1 / 3),
  ]);

  //learn thrice 2000 ietrations, decreasing learning rate
  instance.exports.learn(
    0.1,
    1000,
    iarrx.length,
    arrx_ptr,
    arry_ptr,
    endp_ptr,
    ctrlp_ptr,
  );
  instance.exports.learn(
    0.01,
    1,
    iarrx.length,
    arrx_ptr,
    arry_ptr,
    endp_ptr,
    ctrlp_ptr,
  );
  return [ctrlp_arr, endp_arr];
}

/*
  adds a bezier to the SVG with endp and ctrlp
*/
function addpathtosvg(ctrlp, endp) {
  let newpath = document.createElementNS("http://www.w3.org/2000/svg", "path");
  newpath.setAttribute(
    "d",
    `M ${endp[0]} ${endp[1]} C ${ctrlp[0]} ${ctrlp[1]}, ${ctrlp[2]} ${ctrlp[3]} , ${endp[2]} ${endp[3]}`,
  );
  newpath.setAttribute("stroke", "red");
  newpath.setAttribute("stroke-width", 10);
  newpath.setAttribute("opacity", 1.0);
  newpath.setAttribute("fill", "none");
  svg.appendChild(newpath);
}
