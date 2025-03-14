pragma solidity ^0.8.0;
contract Emulator6 {
    uint x; uint y;
    function init() public {
        x = y - y/y;
    }
    function sub(uint x,uint y) public pure returns(uint) { return x-y; }
    function write() public {}
}
