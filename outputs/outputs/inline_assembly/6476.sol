pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample53 {
    address payable addr1;
    address payable addr2;
    constructor() public payable {
        addr1 = payable(msg.sender);
        addr2 = payable(msg.sender);
    }
    function sendTest(uint i) public returns (uint) {
        require (addr1!= addr2, "Cannot change address twice");
        uint v = msg.value;
        addr1.transfer(v);
        addr2.transfer(v);
        return v;
    }
}
contract MixedContactsExample54 {
    uint x;
    constructor() public { x = 0; }
    modifier check { x += 1; _; }
    function f(uint f) public pure returns (uint) {
        return f + 1;
    }
    function f2(uint f) public pure returns (uint) {
        return f - 1;
    }
}

contract MixedContactsExample55 {
    uint x;
    uint y;
    constructor(uint f) public { x = f; }
    constructor(address a, uint  b) public { y = b; }
    modifier checkb { y += 1; _; }
    function f(uint f) public pure returns (uint) {
        require (f <= x, "Number too high.");
        return f;
    }
    function g( ) public pure returns (uint) {
        return x + 3;
    }
    function g2( ) public pure returns (uint) {
        require (y
