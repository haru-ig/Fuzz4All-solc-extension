pragma solidity ^0.8.0;
contract MixedContactsExample555Mutated {
    uint public constant test = 1;
    uint x;
    constructor() {
        x = test;
    }
    function foo() public {
        x = test + 1;
    }
}
