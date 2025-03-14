pragma solidity ^0.8.0;
contract Mutate2
{
    uint256 public x;
    constructor () {
        x = 1;
        (x) = 2;
        (x) = 2;
        (x) = 11;
        (x) = 7;
        (x) = 8;
        x += 1;
    }
}
