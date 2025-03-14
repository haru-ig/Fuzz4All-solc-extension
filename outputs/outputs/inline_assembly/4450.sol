pragma solidity ^0.8.0;
contract Emulator5 {
    uint z;
    function init() public {
        emit a();
    }
    event a();
    function add(uint x,uint y) public {
        z = x+y+1;
    }
    function write() public pure {
    }
}
contract Emulator6 {
    uint x;
    uint y;
    function init() public {
        x =0x12345678987654321;
        y=12345;
    }
    function add(uint x,uint y) public {
        x+y;
    }
    function write() public pure {
    }
}
