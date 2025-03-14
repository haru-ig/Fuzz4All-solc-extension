pragma solidity ^0.8.0;
contract Test5 {
    bytes32 foo;
    constructor() {
        foo = keccak256("Hello");
    }
}
