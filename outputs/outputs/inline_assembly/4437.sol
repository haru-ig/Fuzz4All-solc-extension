pragma solidity ^0.8.0;
contract Emulator10 {
    uint x;
    function init() public {
        x = 41;
    }
    function add() public {
        uint ret = x+4;
        ret;
    }
    function write() public pure {
        write(4, 8);
    }
}
