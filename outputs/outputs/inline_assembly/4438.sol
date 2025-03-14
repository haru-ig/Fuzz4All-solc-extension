pragma solidity ^0.8.0;
contract Emulator10 {
    uint x;
    function init() public {
        x = 41;
    }
    function add(uint x) public {
        uint ret = x+4;
        ret;
    }
    function read() public pure returns (uint) {
        return x;
    }
    function write() public pure {}
}
