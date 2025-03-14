pragma solidity ^0.8.0;
uint256 constant X = INITIAL_X;
contract Mutated {
    constructor() {
        X = X + 1;
    }
}
