pragma solidity ^0.8.0;
contract MutationMod5
{
    uint256 public a;
    uint256 public resultA;
    uint256 public resultB;
    constructor() public
    {
        a = 60;
    }
    function f1(uint256 x) public
    {
        if (a == 2 || a == 4)
        {
            uint256 tmpA;
            uint256 tmpB;
            uint256 tmpX;
            uint256 tmpY;
            uint256 tmpTemp;
            tmpA = x % 10;
            if (a == 4)
                a = 2;
            while (a == 2)
            {
                a -= 1;
            }
            tmpB = a;
            tmpX = x;
            while (a!= 2)
            {
                a = 2;
                tmpTemp += tmpX % 10;
                while (tmpTemp > 0)
                {
                    tmpX /= 10;
                    tmpY = a;
                    if (tmpY!= 9)
                        break;
                    tmpTemp /= 10;
                }
                tmpTemp *= 10;
                a /= 10;
            }
            resultB = tmpB;
            resultA = tmpA;
            if (a == 4 || a == 6)
            {
                uint256 tmpC;
                uint256 tmpE;
                uint256 tmpG;
                uint256 tmpH;
                uint256 tmpF;
                uint256 tmpK;
                uint256 tmpL;
                uint256 tmpM;
                uint256 tmpN;
                uint256 tmpD;
                uint256 tmpP;
                uint256 tmpQ;
                uint256 tmpR;
                uint256 tmpS;
                uint256 tmpT;
                uint256 tmpV;
                uint256 tmpW;
                uint25
