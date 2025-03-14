pragma solidity ^0.8.0;
contract Emulator3 {
    uint x; uint y;
    function init() public {
        y = x+x;
        uint z = x-y;
        uint w = 5/x;
        uint v = x^y;
        uint u = x/y;
        uint s = u/4;
        x = s;
    }
    function set(uint x) public pure returns(uint) { return 901; }
    function mul(uint x, uint y) public pure returns(uint) {return x*y; }
    function div(uint x, uint y) public pure returns(uint) {
        if (x == 0) return 1;
        uint u = x/y;
        uint u2 = x%y
