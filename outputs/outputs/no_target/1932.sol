pragma solidity ^0.8.0;
uint constant X = 1;
uint constant x = 0;
uint constant y = ~x;
uint constant z = 0xffffffffffffffff000000000000000000000000000ffffffffffffffffffffffff;
uint constant m = 15;
uint constant q = 15;
uint constant u = 15 * 2**23 - 256;
uint constant v = 563527 * 2**21;
uint constant w = u + v;
function w_() pure public returns (uint) {
    uint constant u0__ = (q * X) + (q * X + (q * X + x) * (1 - q));
    return m * (u0__ + w);
}

pragma solidity ^0.8.0;
uint constant X = 1;
uint constant x = 0;
uint constant y = ~x;
uint constant z = 0xffffffffffffffff00000000000000000000000000ffffffffffffffffffffffff;



uint constant v = 563528 * 2**22;
uint constant u0__ = X + (X * X) + (X * X + x) * (1 - X);
uint constant u1__ = u__ - (u__ + (X - v)) / (X - X);
uint constant u_ = u1__ / (X - v);
uint constant v0__ = (u__ - u0__) / (X - X);
uint constant v1__ = v0__ - (u__ - u0__) / (X - x);
uint constant v_ = X + ((X - v0__) + (X - v1__)) / (X - v0__);
uint constant w0__ = (v__ - v0__) / (X - X);
uint constant w1__ = w0__ - (v__ - v0__) / (X - x);
uint constant w_ = X + v0__ + (X - w0__) + w0__ * w1__;
uint constant x0__ = (w__ - w0__) / (X - X);
uint constant x1__ = x0__ - (w__ - w0__) / (X - x);
uint constant x_ = X + w0__ + w1__ + (X - x0__);
