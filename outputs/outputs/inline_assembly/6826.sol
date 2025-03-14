pragma solidity ^0.8.0;
contract MixedContactsExample8888 {
    uint public constant test = 0;
    uint x;
    bytes32 public testHash;
    constructor() {
        x;
        x += 1;
    }
    function foo() public {
        x = x + 1;
        x += 1;
    }
}
