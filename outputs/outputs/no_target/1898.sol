pragma solidity ^0.8.0;
function y() returns (uint) pure public {
    uint z = UintWrapper.x();
    return z;
}


contract X is UintWrapper {
    uint constant NADA = 10;
    function m() pure public returns (uint) {
        return X();
    }
}
contract Z is X {
    uint constant X = 10;
    uint constant Y = 10;
    uint constant Z = 10;
    uint constant W = 100;
    function sum() pure public returns (uint) {
        uint z = UintWrapper.x();
        return z + sum();
    }
    function mult() pure public returns (uint) {
        uint z = UintWrapper.x();
        uint w = UintWrapper.w();
        return z * w + mult();
    }
}
contract UintChecker {
    uint value;
    uint constant ZERO_UINT = 0;
    function g() pure public returns (uint) {
        uint x = 0;
        return g(x);
    }
    function f() pure public returns (uint) {
        uint x = x;
        if (UintWrapper.x()!= X) revert();
        return f(ZERO_UINT);
    }
    function e() pure public returns (uint) {
        uint y = UintWrapper.x();
        return e(ZERO_UINT, y);
    }
    function d() pure public returns (uint) {
        uint y = UintWrapper.x();
        return d(1, nada());
    }
    function c() pure public returns (uint) {
        uint y = UintWrapper.x();
        return c(ZERO_UINT, y, 0);
    }
    function b() pure public returns (uint) {
        uint y = UintWrapper.x();
        uint x = ZERO_UINT;
        return b(y, x, 0);
    }
    function a() pure public returns (uint) {
        uint NADA = 0;
        uint y = 0;
        uint x = 0;
        return a(NADA, y, x);
    }
}
contract UintWrapperCheck {
    uint constant ZERO = 3;
    function j() pure public returns (uint) {
        return j(ZERO);
    }
    function h() pure public returns (uint) {
        uint z = UintWrapper.x();
        uint x;
        if (z > UIntWrapper.w()) x = 2 * z;
        return f(x);
    }
    function e() pure public returns (uint) {
        uint x = UintWrapper.x();
        uint y = UintWrapper.w();
        return e(ZERO, uint(2 * x), y);
    }
    function d() pure public returns (uint) {
        uint b = UintWrapper.x();
        uint a = UintWrapper.w();
        return d(ZERO, uint(2 * a), b);
    }
