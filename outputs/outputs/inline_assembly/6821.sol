pragma solidity ^0.8.0;
contract MixedContactsExample555Mutated {
    uint public constant test = 42;
    uint x;
    constructor() {
        x = test;
    }
    function foo() public {
        x = x + 1;
    }
}
