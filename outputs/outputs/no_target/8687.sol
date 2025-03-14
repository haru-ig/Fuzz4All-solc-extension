pragma solidity ^0.8.0;
contract MutatedABIv2
{
    function f(uint256 x) public pure {
        x = x + x;
        x = x - x;
        x = x * 2;
        uint256 y;
        if(x == y) {
            x += x;
        } else {
            x -= x;
        }
        y = x - x;
        y = x + x;
        y = x - x + x;
        x = x - x + x;
        x = x + x - x;
        x = x - x + x;
        x = x + x - x + x;
        x = x - x + x - x;
        x = x + x - x + x;
        x = x - x + x + x;
        x = x + x - x + x - x;
        x = x - x + x + x;
        x = x + x - x + x;
    }
}
