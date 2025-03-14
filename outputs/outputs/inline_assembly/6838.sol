pragma solidity ^0.8.0;
contract MixedContactsExample081 {
    uint public constant test = 42;
    uint x;
    uint y;
    function foo() public {
        uint(y);
        y;
    }
    constructor() {
        uint(x);
        x;
    }
}
