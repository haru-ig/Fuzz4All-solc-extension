pragma solidity ^0.8.0;
contract Emulator8 {
    uint x; uint y;
    function init() public {
        x = x+y;
    }
    function add(uint x,uint y) public pure returns(uint) {
        return x+x;
    }
    function write() public {}
}
