#define ftype double
#define cube(x) (x) * (x) * (x)
#define sqr(x) (x) * (x)

// enzyme activity definitions
int enzyme_dup;
int enzyme_dupnoneed;
int enzyme_out;
int enzyme_const;

// bump allocater
extern unsigned char __heap_base;
unsigned int bump_pointer = (int)&__heap_base;
void *malloc(int n) {
  unsigned int r = bump_pointer;
  bump_pointer += n;
  return (void *)r;
}

// resets bump pointer freeing everything 
void freeall() { bump_pointer = (int)&__heap_base; }

// enzyme
extern void __enzyme_autodiff(void *, int, int, int, double *, int, double *,
                              int, double *, int, double *, double *, int,
                              double *, double *);

ftype bezier(ftype t, ftype p0, ftype p1, ftype p2, ftype p3) {
  return cube(1.0 - t) * p0 + 3.0 * sqr(1.0 - t) * t * p1 +
         3.0 * (1.0 - t) * t * t * p2 + cube(t) * p3;
}

// ipx inner (excluding end points) x coordinates
// ipy inner (excluding end points) y coordinates
// ts , "t" values for the bezier curve
// ctrlp , control points of bezier curve
// endp , end points of bezier curve
double loss(int len, double *ipx, double *ipy, double *endp, double *ctrlp,
            double *ts) {
  double ret = 0.0;
  /* endpoints...
   * p0 = endp[0],endp[1]
   * p3 = endp[2],end[[3]
   *
   * control points...
   * p1 = ctrlp[0],ctrlp[1]
   * p2 = ctrlp[2],ctrlp[3]
   */
  for (int i = 0; i < len; i++) {
    ret =
        ret +
        __builtin_sqrt(
            sqr(ipx[i] - bezier(ts[i], endp[0], ctrlp[0], ctrlp[2], endp[2])) +
            sqr(ipy[i] - bezier(ts[i], endp[1], ctrlp[1], ctrlp[3], endp[3])));
  }
  return ret;
}

// computes derivates w.r.t ctrlp, and ts and stores them in dctrlp and dts
void dloss(int len, double *ipx, double *ipy, double *endp, double *ctrlp,
           double *dctrlp, double *ts, double *dts) {
  __enzyme_autodiff((void *)loss, enzyme_const, len, enzyme_const, ipx,
                    enzyme_const, ipy, enzyme_const, endp, enzyme_dup, ctrlp,
                    dctrlp, enzyme_dup, ts, dts);
}

double dist(double x0, double y0, double x1, double y1) {
  return __builtin_sqrt(sqr(x0 - x1) + sqr(y0 - y1));
}

void zerodts(double *dts, int len) {
  for (int i = 0; i < len; i++) {
    dts[i] = 0.0;
  }
}

void zeroctrlp(double *dctrlp) {
  for (int i = 0; i < 8; i++) {
    dctrlp[i] = 0.0;
  }
}

void update(double *arr, double *darr, int len, double alpha) {
  for (int i = 0; i < len; i++) {
    arr[i] = arr[i] - alpha * darr[i];
  }
}

void learn(double alpha_cp, int iter, int len, double *ipx, double *ipy,
           double *endp, double *ctrlp) {
  double *ts = (double *)malloc(len * 8);
  double tot_dist = dist(endp[0], endp[1], ipx[0], ipy[0]);
  for (int i = 0; i < len - 1; i++) {
    ts[i] = tot_dist;
    tot_dist = tot_dist + dist(ipx[i], ipy[i], ipx[i + 1], ipy[i + 1]);
  }
  ts[len - 1] = tot_dist;
  tot_dist = tot_dist + dist(ipx[len - 1], ipy[len - 1], endp[2], endp[3]);
  for (int i = 0; i < len; i++) {
    ts[i] = ts[i] / tot_dist;
  }

  double *dts = (double *)malloc(len * 8);
  double *dctrlp = (double *)malloc(8 * 8);
  // zero out derivative stores
  zerodts(dts, len);
  zeroctrlp(dctrlp);

  for (int i = 0; i < iter; i++) {
    zerodts(dts, len);
    zeroctrlp(dctrlp);
    dloss(len, ipx, ipy, endp, ctrlp, dctrlp, ts, dts);
    update(ts, dts, len, 0.00001);
    update(ctrlp, dctrlp, 8, alpha_cp);
  }
}
