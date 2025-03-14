pragma solidity ^0.8.0;
contract Emulator6 {
    uint x;
    uint y;
    function init() public pure {
        x = x+y;
    }
    function add(uint x,uint y) public pure {
        uint ret = x+y;
        ret = x+x;
        x += x;
        x += x;
        x += x;
        x += x;
        x + x;
        x + x;
        ret;
    }
}
