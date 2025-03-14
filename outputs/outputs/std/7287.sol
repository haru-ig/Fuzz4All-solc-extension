pragma solidity ^0.8.0;
contract Mutation
{
    uint256 public a;
    constructor()
    {
        a = 0;
    }
    function f(uint256 x) public
    {
        uint256 y;

        if (x > 0)
            y = x;
        else
            y = a;
        if (a == 0)
            a = y;
    }
}
