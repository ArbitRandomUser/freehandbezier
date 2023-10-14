# freehandbezier

fit hand drawn curves to a  cubic bezier 

if you wish to tweak this you will need, clang , wasm-ld , enzyme to build the `public/outf.wasm`

a prebuilt `public/outf.wasm` is available,
run npm run dev in folder and view at localhost:5173 (usually the default).

does not use emscripten or other wasm frameworks , allocater is a simple bump allocater.
Theres no `free` , there is a `freeall` which clears the entire heap ( resets the bump pointer to the beginning of the heap)
