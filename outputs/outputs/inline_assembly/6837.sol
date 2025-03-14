pragma solidity ^0.8.0;
contract MixedContactsExample081 {
    uint internal constant test = 42;
    uint x;
    bytes32 internalHash;
    constructor() { x; }
    function foo() public { x = x + 1; }
}
