pragma solidity ^0.8.0;
contract Emulators {
    uint x1;
    uint x2;
    uint[] memory x3;

    function add(uint x, uint y) public returns(uint) {
        uint ret = x-y;
        emulate1();
        emulate2();
        write();
        return ret;
    }
    function emulate1() public pure {}
    function emulate2() public pure {}
    function write() public pure {}
}
