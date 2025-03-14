pragma solidity ^0.8.0;
contract Emulator7 {
    uint x = 10;
    function add (uint x, uint y) public returns(uint) {
        uint ret = x-y;
        write();
        x;
        ret;
    }
    function write() public pure {}
}
