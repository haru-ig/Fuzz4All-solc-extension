pragma solidity ^0.8.0;
contract Mutation
{
    uint public a;
    uint public mutated;
    uint256 immutable y = 42;
    constructor() {
        a = 1;
    }
    function check() public returns (uint) {
        return mutated;
    }
    function update() public {
        mutated = y + a;
        a = a + 1;
    }
}
