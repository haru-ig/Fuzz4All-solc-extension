pragma solidity ^0.8.0;
contract Emulator1 {
    function add(uint x, uint y) public returns(uint) {
        x = 5;
        uint ret = x-y;
        write();
        return ret;
    }
    function write() public pure {}
}
