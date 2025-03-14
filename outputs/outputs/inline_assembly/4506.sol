pragma solidity ^0.8.0;
contract Emulator6 {
    uint x; uint y;
    uint z;
    function x() public view returns(uint) {
        return x;
    }
    function init(uint y) public {
        z = y-1;
        x = 2;
        y = 2;
        uint z2 = z/z;
        uint w = x*z;
        uint v = z*z;
        x = v;
        uint u = y/x;
        x = u;
        x = u;
        x = u;
        x = y;
    }
    function div(uint x, uint y) public pure returns(uint) {
        if (x == 0) return 1;
        uint u = x/y;
        uint u2
