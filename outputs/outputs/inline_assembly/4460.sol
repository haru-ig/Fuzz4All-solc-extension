pragma solidity ^0.8.0;

contract Emulator7 {
    uint x;
    uint y;
    function init() public {
        x = x+y;
    }
    function addTwoInts() public pure returns(uint) {
        uint ret = 2*(x+1);
        return 2*x;
    }
    function add(uint x,uint y) public pure returns(uint) {
        uint ret = x+y;
        return x+x;
    }
    function write() public {}
}
