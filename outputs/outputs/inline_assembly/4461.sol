pragma solidity ^0.8.0;
contract Emulator7 {
    uint x;
    uint y;
    function init() public {
        y = x+y;
    }
    function add(uint x,uint y) public pure returns(uint) {
        uint ret = x+y;
        return x+x;
    }
    function write() public {}
}
