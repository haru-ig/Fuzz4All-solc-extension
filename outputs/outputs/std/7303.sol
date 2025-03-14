pragma solidity ^0.8.0;
contract MutationMod6
{
    uint256 public a;
    uint256 public resultA;
    uint256 public resultB;
    constructor()
    {
        a = 5;
    }
    function f1(uint256 x2) public
    {
        uint256 tmpA;
        uint256 tmpB;
        uint256 tmpX;
        uint256 tmpY;
        uint256 tmpTemp;
        addr tmpAddr;
        tmpA = x2;
        while (a!= 2)
        {
            a = 2;
            tmpTemp += tmpA;
            while (tmpTemp > 0)
            {
                tmpA = tmpTemp % 10;
                tmpB = a / 10;
                if (tmpA > 9 && (a > 2) && (tmpB > 9))
                    break;
                tmpTemp /= 10;
            }
            a /= 10;
        }
        resultB = tmpB;
        resultA = tmpA;
    }
}
