pragma solidity ^0.8.0;
contract Mutate2
{
    uint256 public x;
    constructor (uint256 x, uint256 y) {
        x = x * 2;
        x += y * 3;
        x *= y * (x / y + 1);
        x = (x / 100) + 26;
    }
}
