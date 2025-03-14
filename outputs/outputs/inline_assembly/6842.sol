pragma solidity ^0.8.0;
contract MixedContactsExample082 {
    uint public constant test = 42;
    uint x;
    uint y;
    function foo() public {
        uint(y);
        y;
        x;
        x = 69;
    }
    constructor() {
        uint(x);
        uint(y);
        y;
    }
}
