pragma solidity ^0.8.0;
contract MutationMod2
{
    uint256 public a;
    constructor()
    {
        a = 50;
    }
    function f3(uint256 x) public
    {

        if (x > 0) a = 0;

        else if (a > 0) a -= 1;

        else a = x;
    }
    function f5(uint256 x) public
    {

        if (x > 0) if (a == 1) a = 0;

        else else if (a > 0) if (a -= 1);

        else a = x;
    }
}
