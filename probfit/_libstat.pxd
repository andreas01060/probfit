cimport numpy as np

cpdef double integrate1d(f, tuple bound, int nint, tuple arg=*) except *

cpdef double csum(np.ndarray x)

cpdef np.ndarray[np.double_t] vectorize_f(f,np.ndarray[np.double_t] x,tuple arg)

cpdef double xlogyx(double x,double y)

cpdef double wlogyx(double w,double y, double x)

cpdef np.ndarray[np.double_t] vectorize_f(f,np.ndarray[np.double_t] x,tuple arg)


cpdef double integrate1d_with_edges(f,np.ndarray edges, double bw, tuple arg) except *

#to do runge kutta or something smarter
cpdef double integrate1d(f, tuple bound, int nint, tuple arg=*) except*

#fast and accurate x*log(y/x)
cpdef double xlogyx(double x,double y)

#compute w*log(y/x) where w < x and goes to zero faster than x
cpdef double wlogyx(double w,double y, double x)

#these are performance critical code
cpdef double compute_bin_lh_f(f,
                    np.ndarray[np.double_t] edges,
                    np.ndarray[np.double_t] h, #histogram,
                    np.ndarray[np.double_t] w2,
                    double N, #sum of h
                    tuple arg, double badvalue,
                    bint extend, bint use_sumw2) except *

cpdef double compute_nll(f,np.ndarray data,w,arg,double badvalue) except *


cpdef double compute_chi2_f(f,
                    np.ndarray[np.double_t] x,
                    np.ndarray[np.double_t] y,
                    np.ndarray[np.double_t] error,
                    np.ndarray[np.double_t] weights,
                    tuple arg) except *


cpdef double compute_bin_chi2_f(f,
                np.ndarray[np.double_t] x,np.ndarray[np.double_t] y,
                np.ndarray[np.double_t]error,np.ndarray[np.double_t] binwidth,
                np.ndarray[np.double_t]weights,tuple arg) except *


cpdef double compute_chi2(np.ndarray[np.double_t] actual,
                        np.ndarray[np.double_t] expected,
                        np.ndarray[np.double_t] err)

cpdef compute_cdf(np.ndarray[np.double_t] pdf, np.ndarray[np.double_t] x)

#invert cdf useful for making toys
cpdef invert_cdf(np.ndarray[np.double_t] r,
                np.ndarray[np.double_t] cdf,
                np.ndarray[np.double_t] x)
