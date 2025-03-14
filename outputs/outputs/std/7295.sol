pragma solidity ^0.8.0;
contract MutationMod5
{
    uint256 public a;
    uint256 public resultA;
    uint256 public resultB;
    constructor()
    {
        a = 60;
    }
    function f1(uint256 x) public
    {
        if (x <= 1)
        {
            uint256 tmpA;
            uint256 tmpB;
            uint256 tmpX;
            uint256 tmpY;
            uint256 tmpTemp;

            tmpA = x;
            while (a == 4 && a!= 2)
            {
                a == 2;
                a -= 1;
            }
            tmpB = a;
            tmpX = x;
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
        }
    }
}
