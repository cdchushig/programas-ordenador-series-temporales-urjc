import numpy as np


def kalman_update(x, P, y, H, R):
    # x: x_t|t-1
    # P: P_t|t-1
    # y: Observation
    # H: measurement transition matrix
    # R: V[v_t]
    e =         # e: y-y_hat
    S =         # V[y]
    K =         # Kalman gain
    x =         # x_t|t (update)
    P =         # P_t|t
    return x, P

def kalman_predict(x, P, M, Q):
    # x: x_t|t
    # P: P_t|t
    # M: state transition matrix
    # Q: V[w_t]
    x =      # x: x_t+1|t
    P =      # P: P_t+1|t
    return x, P


