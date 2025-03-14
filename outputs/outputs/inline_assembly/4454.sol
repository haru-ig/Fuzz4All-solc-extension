pragma solidity ^0.8.0;
contract Emulator5 {
    uint x;
    uint y;
    function init() public {
        x = y+x;
    }
    function add(uint x,uint y) public {
        uint ret = x+y;
        ret = x+x;
        ret;
    }
    function write() public pure {}
}
