pragma solidity ^0.8.0;
contract Mutate25 {
    uint public x;
    uint256 constant ONE = 1;
    constructor(uint256) public {
        assert (x ^ x < ONE);
        x ^= 2 * ONE;
    }
}
