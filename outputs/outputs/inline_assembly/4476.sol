pragma solidity ^0.8.0;
contract Emulator5 {
    uint x = uint8(0)
    uint y;
    function init() public {
        uint x = 1;
        uint y = int8(x) + uint8(128);
    }
    function set(uint x) public pure returns(uint) { return x; }
    function mul(uint x, uint y) public pure returns(uint) {return x*y; }
    function div(uint x, uint y) public pure returns(uint) {
        if (x == 0) return 1;
        uint u = x/y;
        uint u2 = x%y;
        uint t = y-u*y;
        if (t < 0) {
            u2 = t-
