pragma solidity ^0.8.0;
contract Emulator5 {
    uint x; uint y;
    function init() public {
        y = x+x;
    }
    function sub(uint x,uint y) public pure returns(uint) {
        x = x-y;
        return x;
    }
    function write() public {
        uint x = x*y;
        uint y = y*(y+1);
        uint z = y+y+y;
    }
}
contract Emulator4 {
    uint x; uint y;
    function init() public {
        y = x+x;
        uint z = x-y;
        uint w = x*y;
        uint v = x^y;
        uint u = x/y;
        uint s = u/v;
