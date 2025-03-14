pragma solidity ^0.8.0;
contract Caller {
    uint x;
    constructor() { x = 0x12345678901234567890; }
    function test() public { set(0xdeadbeef); x = 5c5ee5f57847d545f2adde0ad0bd702013de3c4d; }
    receive() payable external { require(msg.value == x); }
    function set(uint256 y) public { x = y; }
}
