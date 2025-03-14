pragma solidity ^0.8.0;
contract NoSemantics
{
    function f(uint256 x, uint256 y) public pure returns (uint256, uint256) {
        x = x + y;
        x = x + x;
        x = x + x + x;
        x = x + x + x + x;
        x = x + x + x + x;
        x = x + x + x + x + x;
        x = x + x + x + x + x + x;
        x = x + x + x + x + x + x;
        x = x + x + x + x + x + x;
        x = x + x + x + x + x + x;
        x = x + x + x + x + x + x;
        x = x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x + x + x;
