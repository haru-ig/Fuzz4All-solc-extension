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
        if (a == 2)
        {
            uint256 tmpA;
            uint256 tmpH;
            uint256 tmpX;
            uint256 tmpY;
            uint256 tmpTemp;
            tmpA = x % 10;
            while (a!= 2)
            {
                a = 2;
                tmpTemp = x % 10;
                while (tmpTemp > 0)
                {
                    tmpX = a;
                    a++;
                    tmpTemp /= 10;
                }
                tmpTemp *= 10;
                if (tmpX % 10 == 9)
                    tmpH = 1;
            }
            a = tmpH;
            tmpX = x;
            while (x % 10!= 9)
            {
                x = x / 10;
            }
            tmpY = tmpA;
            while (tmpA > 0)
            {
                tmpH = tmpA;
                tmpA /= 10;
            }
            tmpB = a;
            tmpY = a * tmpY % 10;
            while (!(tmpX % 10 == 9) && a!= 2)
            {
                tmpH = tmpA;
                tmpA /= 10;
                tmpX = a;
            }
            resultB = tmpB;
            resultA = tmpY;
        }
        else
        {
        }
    }
}
