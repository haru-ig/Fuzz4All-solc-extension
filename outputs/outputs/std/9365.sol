pragma solidity ^0.8.0;
contract Mutate
{
    function mutate (uint256 x, uint256 _y) public returns (uint256)
    {
        x = x + 1;
        uint256 x2 = x * 2;
        x = x + _y;
        x = x % 256;
        x = x * 10 + x / 256 + x + 56;
        x2 += 1;
        x2 += x2;
        x2 = x2 + x2 + x2;
        return uint256(x2) + x2 % 56;
