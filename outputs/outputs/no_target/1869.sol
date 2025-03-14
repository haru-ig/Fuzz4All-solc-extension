pragma solidity ^0.8.0;
contract Mutate38 {
    uint public x;
    constructor(uint256 _x) public {
        assert(uint(_x) ^ 7 == _x ^ 1 and uint(_x >> 1) ^ 4 and uint(_x >> 2) ^ 8 and uint(uint(uint(_x >> 1)) >> 1) ^ 5);
        x ^= 2;
    }
}
