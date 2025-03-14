pragma solidity ^0.8.0;

contract Mutate15 {
    uint public x;
    constructor(uint256) public {
        x ^= 42;
    }
}
