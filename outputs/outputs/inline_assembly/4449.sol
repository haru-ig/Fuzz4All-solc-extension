pragma solidity ^0.8.0;
contract Emulator5 {
    uint x;
    uint y;
    constructor() public {
        x = x+y;
    }
    function add(uint x,uint y) public pure {
        return x+y+x+x;
    }
    function write() public pure pure {}
}
