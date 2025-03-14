pragma solidity ^0.8.0;
contract MixedContactsExample080 {
    uint public constant test = 42;
    uint x;
    bytes32 internalHash;
    constructor() {
        bytes32(x);
        internalHash;
    }
    function foo() public {
        x = x + 1;
    }
}
