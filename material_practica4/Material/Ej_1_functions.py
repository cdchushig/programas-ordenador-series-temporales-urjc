import numpy as np
from scipy.signal import deconvolve

def predictor_polynomial(A, C, k = 1, trunc_order = None):
    """
    Prediction polynomial for ARMA: A(z) y_t = C(z)e_t
    
    Computes F(z) and G(z) from division:
          C(z) / A(z) = F(z) + z^-k G(z)
          
    Parameters
    ----------
    A : A(z) as a numpy array
    C : C(z) as a numpy array
    k : prediction step
    trunc_order (optional): truncation order of the division G(z)/C(z)
    
    Returns
    -------
    F : F(z) as a numpy array
    G : G(z) as a numpy array
    G_over_C : computes the division 
                G(z)/C(z) up to trunc_order

    """
    
    A, C = equal_length(A, C)
    
    # [F,G] = deconv(conv([1 zeros(1,k-1)], C), A)
    num = np.convolve(np.concatenate(([1], np.zeros(k-1))), C)
    F, R = deconvolve(num, A)
    
    # Remove leading zeros (corresponding to z^-k)
    G = R[k:]
    
    
    print('### F(x): ###')
    #print(np.poly1d(F))
    print_z_poly(F)
    print("\n" * 1)
    
    print('### G(x): ###')
    #print(np.poly1d(G))
    print_z_poly(G)
    print("\n" * 1)
    
    if trunc_order is not None:
        
        # Expansion of G/C (prediction coefficients for y_t,  t<T) 
        C_inv = invert_poly(C, trunc_order)
        G_over_C = np.convolve(G, C_inv)[:trunc_order]
        
        print('### G(x)/C(x): ###')
        #print(np.poly1d(G_over_C))
        print_z_poly(G_over_C)
        print("\n" * 1)
        
        return F, G, G_over_C
    else:    
        return F, G


    
    

def equal_length(a, b):
    """
    Make polynomial a and b equal length
    by adding 0 term monomials
    """
    n = max(len(a), len(b))
    a_eq = np.pad(a, (0, n - len(a)))
    b_eq = np.pad(b, (0, n - len(b)))
    return a_eq, b_eq


def invert_poly(c, n):
    """
    Compute the power series expansion of 1/C(z) up to order n,
    where C(z) is given by coefficients c = [c0, c1, ..., cp].
    
    Parameters:
    c (list[float]): Coefficients of C(z), starting from constant term.
    n (int): The order up to which to compute the inverse (returns coefficients up to z^n).
    
    Returns:
    list[float]: Coefficients of 1/C(z) up to z^n.
    
    Assumes c[0] != 0 for invertibility at z=0.
    """
    if c[0] == 0:
        raise ValueError("Constant term must be non-zero.")
    
    p = len(c) - 1  # Degree of C(z)
    d = [0.0] * (n + 1)
    d[0] = 1.0 / c[0]
    
    for k in range(1, n + 1):
        s = 0.0
        for m in range(1, min(k, p) + 1):
            s += c[m] * d[k - m]
        d[k] = -s / c[0]
    
    return d


# def poly_z_inv(coeffs):
#     terms = []
#     for k, c in enumerate(coeffs):
#         if c == 0:
#             continue
#         sign = "+" if c > 0 and k > 0 else ""
#         if k == 0:
#             terms.append(f"{c}")
#         else:
#             terms.append(f"{sign}{c} z^-{k}")
#     return " ".join(terms)

import numpy as np

def print_z_poly(coeffs):
    """
    Prints a nicely formatted polynomial in terms of z^{-k} from a NumPy array of coefficients.
    
    The array coeffs represents the coefficients for z^0, z^{-1}, ..., z^{-(n-1)},
    where n = len(coeffs).
    
    Example:
    coeffs = np.array([1, 2, -3.5])
    Output: 1 + 2*z^{-1} - 3.5*z^{-2}
    """
    coeffs = np.asarray(coeffs)
    if np.allclose(coeffs, 0):
        print("0")
        return
    
    terms = []
    for i, coef in enumerate(coeffs):
        if np.isclose(coef, 0):
            continue
        sign = ' + ' if coef > 0 else ' - '
        abs_coef = abs(coef)
        # Use :g to format floats nicely, removing .0 if integer
        coef_str = f"{abs_coef:g}" if abs_coef != 1 or i == 0 else ''
        var_str = '' if i == 0 else f"z^{{-{i}}}"
        mul = '*' if coef_str and var_str else ''
        term = sign + coef_str + mul + var_str
        terms.append(term)
    
    if not terms:
        s = '0'
    else:
        s = ''.join(terms)
        if s.startswith(' + '):
            s = s[3:]
        elif s.startswith(' - '):
            s = '-' + s[3:]
    
    print(s)


