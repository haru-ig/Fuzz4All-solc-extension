pragma solidity ^0.8.0;
contract Mutation
{
    uint256 public a;
    constructor()
    {
        a = 0;
    }
    function f1(uint256 x) public pure
    {
        if (x > 0)
        {
            if (a == 0)
                a = x;
            else if (a < x)
                a = x;
        }
        else if (a > 0)
        {
            if (a == x)
                a = 0;
            else if (a > x)
                a = 0;
        }
    }
}
