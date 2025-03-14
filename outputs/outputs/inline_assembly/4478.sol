pragma solidity ^0.8.0;
contract Emulator3 {
    uint x; uint y; int r;    function init() public {
        r = r/y;
        uint w = r%x;
        uint s = x+y-w;
        uint t = w+s;
        uint z = s-t;
        uint u = z%y;
        if (u >= y) {r = 0;}
        else if (u > 0) {r = y;}
        else {r = u;}
        x = u;
    }
    function set(uint x) public pure returns(uint) { return x; }
    function mul(uint x, uint y) public pure returns(uint) {return x*y; }
    function sub(uint x,uint y)
