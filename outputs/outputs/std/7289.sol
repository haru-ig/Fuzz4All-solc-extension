pragma solidity ^0.8.0;
contract MutationMod
{
    uint256 public a;
    constructor()
    {
        a = 50;
    }
    function f3(uint256 x) public
    {
        if (x > 0)
        {
            uint256 tmp = a;
        }
        else if (a > 0)
        {
            uint256 tmp = a - 1;
        }
        else
            a = x;
    }
    function f5(uint256 x) public
    {
        if (x > 0)
        {
            if (a == 1)
                a = 0;
        }
        else
            a = x;
    }
}
