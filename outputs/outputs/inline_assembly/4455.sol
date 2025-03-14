pragma solidity ^0.8.0;
contract Emulator5 {
    uint[5000] memory x;
    function init() public {
        x[0] = 42;
        x[1] = 22;


        write();
    }
    function add(uint x,uint y) public {
        uint ret = x+y;
        ret = x+x;
        ret;
    }
    function write() public pure {}
}
