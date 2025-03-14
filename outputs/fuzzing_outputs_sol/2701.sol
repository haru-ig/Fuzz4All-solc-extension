pragma solidity ^0.8.0;
contract Caller2 {
    uint x;
    constructor() {   x = 0; }
    function test() public { set(0x3ab007f7d54fa0310b65e1f5d2ea87a2dd1905e91fb83b1f252168aa5bf6c2df); x = 0xc3b63708c88af13a47f19858d478601bd17e6474ea533148b63d866c5b9f9bb7; }
    receive() external payable { require(msg.value == x); }
    function set(uint y) public { x = y; }
}
