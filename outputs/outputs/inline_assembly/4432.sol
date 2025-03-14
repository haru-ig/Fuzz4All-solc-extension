pragma solidity ^0.8.0;
contract Emulator9 {
    uint x;
    function init() public {
        x = 41;
    }
    function add(uint x) public {
        uint ret = x-2;
        write();
        x;
        ret;
    }
    function write() public pure {}
}
