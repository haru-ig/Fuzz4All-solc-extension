pragma solidity ^0.8.0;
contract Emulator6 {
    uint x; uint y;
    function init() public {
        y = x+y;
        uint z = x-y;
        uint w = x*y;
        uint v = x^y;
        uint u = x/y;
        uint s = (uint)((uint(100)/x)*y)%100;
        x = s;
    }
    function set(uint x) public pure returns(uint) { return x; }
    function mul(uint x, uint y) public pure returns(uint) {return x*y; }
    function div(uint x, uint y) public pure returns(uint) {
        if (x == 0) return 1;
        uint u = x/y
