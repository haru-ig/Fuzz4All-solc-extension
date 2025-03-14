pragma solidity ^0.8.0;
contract Emulator4 {
    uint x;
    function add(uint x, uint y) public returns(uint) {
        uint ret = x-y;
        x;
        x;
        (x+y);
        x;
        x;
        ret;
    }
    function write() public pure {}
}
contract Emulator5 {
   function write() public pure {}
}
contract Emulator6 {
    uint x;
    function add(uint x, uint y) public returns(uint) {
        uint ret = x-y;
        write();
        return ret;
    }
    function write() public pure {}
}
