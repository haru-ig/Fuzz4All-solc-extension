pragma solidity ^0.8.0;
contract Mutations {
    uint256 constant INITIAL_X = 42;
    uint256 public x = INTIAL_X;
    constructor() {
        x++;
    }
