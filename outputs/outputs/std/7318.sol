pragma solidity ^0.8.0;
contract MutationMod5
{
    uint256 public a;
    function f1(uint256 x) public
    {
        if (a == 2 || a == 4)
        {
            a = 2;
        }
        else
        {
        }
        if (a == 2 || a == 4)
        {
            a -= 1;
        }
    }
}
