pragma solidity ^0.8.0;
contract Mutate2
{
    uint256 public x;
    constructor (uint256 x) {
        x += 2;
        x /= 100;
        x -= x / 20;
        x += 1 * (0.2 + (0.4 * 5));
    }
}

pragma solidity ^0.8.0;
contract Mutate3
{
    uint256 public x;
    constructor () {
        x += 2 * (~ x + 2);
        x += (x == 2 / 3)? 120 : 200;
    }
}
