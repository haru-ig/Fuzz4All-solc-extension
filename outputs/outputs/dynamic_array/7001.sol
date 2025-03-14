pragma solidity ^0.8.0;
contract Test5 {
    bytes32 internal foo;
    constructor() {
        foo = keccak256("Hello");
    }
}
