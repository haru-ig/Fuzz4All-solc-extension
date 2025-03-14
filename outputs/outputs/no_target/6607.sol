pragma solidity ^0.8.0;

contract myContract {
    function f(uint x)  public view returns(uint) {
        if (x == 0) {
            return 0;
        }
        return x + 1;
    }
    function h(uint y) public view returns (uint) {
        y -= 1;
        y = 2 + 34;
        return (y * 5 + 3 * y + 14);
    }
    function i(uint x, uint y) public returns (uint) {
        x *= 2;
        y = (x / y)* 2 + 1;
        x = x + (x * y);
        return y+ x;
    }
    function j(uint x, uint y) public returns (uint) {
        (uint r, uint s) = k(x);
        (uint x1, uint y1) = h2(r, s, x, y);
        (uint x2, uint y2) = g2(x1, x, y1);
        return (x2 / 2) + y2;
    }
    function k(uint x) public pure returns (uint, uint) {
        uint r = ((x + 1000)/ x);
        uint r1 = (((x + 1)/ x) * x + 25);
        return (r, r1);
    }
    function x(uint y) public pure returns (int y, uint y1) {
        (uint y11, uint y2) = g2(y, 7, 8);
        uint r = (y11 / 4) * y;
        y = r*(y1 + y * (y1 * 9 / (y1 * 3 + 3 * y1)));
        uint z = (y1 + 10) / y;
        return y, z;
    }
    function h2(uint x, uint y, uint z, uint w) public pure returns (uint, uint) {
        (uint r, uint s) = k(w);
        (uint u, uint v) = i2(x, y, z, r, s);
        (uint u1, uint v1) = h2(u, v, x, y);
        (uint w1, uint w2) = i2(u, v, z, r, s);
        return (u1 + v1 - w2, w2);
    }
    function i2(uint a, uint b, uint c, uint r, uint s) public pure returns (uint, uint) {
        (uint u
