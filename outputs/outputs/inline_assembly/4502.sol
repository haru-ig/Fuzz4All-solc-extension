pragma solidity ^0.8.0;
contract Emulator5 {
    uint x; uint y;
    function init() public {
        y = x+x;
    }
    function sub(uint x,uint y) pure public returns(uint) { return x-y; }
    function write() public {}
}
contract Emulator4 {
    uint x; uint y;
    function init() public {

        y = x+x;

        uint z = x-y;

        uint w = x*y;

        uint v = x^y;

        uint u = x/
