pragma solidity ^0.8.0;
contract Mutated {
    uint256 constant INITIAL_X = 42;
    uint256 private x;
    constructor() {
        x = INITIAL_X;
    }
    function mutatedFunction(uint256 y) internal {
        x = y;
    }
}
