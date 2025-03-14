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
        if (a == 2 || a == 4)
        {
            uint256 tmpA;
            uint256 tmpB;
            tmpA = x;
            while (a == 4 && a!= 2)
            {
                a == 2;
                a -= 1;
            }
            if (a!= 2)
                a = 2;
            tmpB = a;
            tmpA = x;
            while (a!= 2)
            {
                a = 2;
                tmpA += x;
                while (tmpA > 0)
                {
                    x = tmpA % 10;
                    tmpA = (tmpA / 10) % 10;
                    if (x!= 9)
                        break;
                }
                tmpA = (tmpA / 10) % 10;
            }
            resultB = tmpB;
            resultA = tmpA;
        }
    }
}
