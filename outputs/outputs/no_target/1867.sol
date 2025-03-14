pragma solidity ^0.8.0;
contract Mutate40 {
    uint public x;
    constructor(uint160) public {
        x ^= 1;
    }
}
