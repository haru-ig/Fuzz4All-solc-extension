pragma solidity ^0.8.0;
contract Mutate1
{
    uint256 public x;
    constructor (uint256 x, uint256 _y, uint256 z) {
        x = x + 2;
        x += _y;
        x -= z;
        x += 2 * ((x / 100) - 26);
    }
}
