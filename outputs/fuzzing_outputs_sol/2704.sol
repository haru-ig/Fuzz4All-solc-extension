pragma solidity ^0.8.0;
contract Caller {
    uint x;
    constructor() {   x = 0x12345678901234567890; }
    function test() public { set(0xdeadbeef); x = 0xabcd; }
    receive() public payable { require(msg.value == x); }
    function set(uint y) public { x = y; }
}
