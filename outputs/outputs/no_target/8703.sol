pragma solidity ^0.8.0;
contract EquivalentABIv081
{
    function f(uint256 x) public pure {
        x;
        x = x + 1 + 2 * 576;
        x = x >> 5;
        x = x + 1 >> 0;
        y;
        x = x + 1 + 2;
        x = x + 1 + 16472 + 26877 * x - 115342 * x + 81533 * x * x;
    }
}
