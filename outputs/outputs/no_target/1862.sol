pragma solidity ^0.8.0;
contract Mutate16 {
    uint public x;
    uint public constant ONE = 1;
    constructor(uint256) public {
        x ^= 2 * ONE;
    }
}
contract Mutate25 {
    uint public x;
    uint public constant ONE = 1;
    constructor(uint256) public {
        x ^= 2;
    }
}
