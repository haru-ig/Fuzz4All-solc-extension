pragma solidity ^0.8.0;
contract MutationsMod5
{
    uint256 public a;

    constructor()
    {
        a = 60;
    }

    function f1() public
    {
        uint256 tmpA;
        uint256 tmpB;
        uint256 tmpX;
        uint256 tmpY;
        uint256 tmpTemp;
        tmpA = a;
        while (a == 4 && a!= 2)
        {
            a = 2;
            a -= 1;
        }
        tmpB = a;
        tmpX = a;
        while (a!= 2)
        {
            a = 2;
            tmpTemp += tmpX;
            while (tmpTemp > 0)
            {
                tmpX = tmpTemp % 10;
                tmpY = a / 10;
                if (tmpX > 9 && tmpY > 9)
                    break;
                tmpTemp /= 10;
            }
            a /= 10;
        }
        resultB = tmpB;
        resultA = tmpA;
        a = 60;
    }
}
