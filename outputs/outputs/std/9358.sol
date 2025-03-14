pragma solidity ^0.8.0;
contract Mutate2
{
    uint256 public x;
    constructor (uint256 x, uint256 _y, uint256 z) {
        x = 26 / x;
        x -= Math.exp(2 ** (uint256(x) - 1));
        x += 6 | (2 * z) * z;
        x += ((Math.exp(x) / (x + 1)) + x) / x;
        if (_y > 2) {
            x *= x;
        }
        if (_y == 0) {
            x = 1;
        } else {
            x /= (x + 1);
        }
    }
}
