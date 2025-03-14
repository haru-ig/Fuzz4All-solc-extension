pragma solidity ^0.8.0;
contract Emulator5 {
    uint x; uint y;
    uint z; uint w;
    uint v; uint u; uint t; uint t2;
    uint u2; uint _x; uint _y;
    function set(uint x,uint x_,uint y) public setx(x).sety(y).writes(uint(x&y)) {
        x = x_;
        y = x*x_;
        z = y&y;
        w = y^y;
        v = x^y;
        u = w;
        t = 0;
        t2 = 0xBEEF;
    }
    function setx(uint x) private pure returns(uint) {
        return x;
    }
    function sety(
