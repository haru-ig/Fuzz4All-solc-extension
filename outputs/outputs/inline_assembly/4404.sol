pragma solidity ^0.8.0;
contract Emulator {
    uint a, b;
    function add(uint x, uint y) public returns(uint) {
        return a + b + x + y;
    }
}
