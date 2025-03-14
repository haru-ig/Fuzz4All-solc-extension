pragma solidity ^0.8.0;
contract Emulator8 {
    uint x; uint y;
    function init() public {
        x = y+x;
    }
    function add(uint x,uint y) public pure returns(uint) {return x+y; }

    function write() public {}
}
