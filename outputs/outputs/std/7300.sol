pragma solidity ^0.8.0;
contract MutationMod5
{
    uint256 public a;
    uint256 public resultA;
    uint256 public resultB;
    uint256 public a0;
    constructor() renounceRole(MINTER_ROLE, msg.sender)
    {
        a0 = 3;
    }
    function f1(uint256 _a) public
    {
        a0 = 60;
        a = _a;
        if (a < _a + 4)
        {
            resultA = 1000;
            resultB = 0;
        }
        else
        {
            uint256 b;
            uint256 resultB;
            uint256 x;
            uint256 y;
            uint256 temp;
            x = 3;
            resultB = x + 1;
            while (a0 == 4 && a!= 2)
            {
                a0 = 2;
                a -= 1;
            }
            b = a0;
            x = _a;
            while (a!= 2)
            {
                a = 2;
                temp += x;
                while (temp > 0)
                {
                    x = temp % 10;
                    y = x / 10;
                    if (x > 9 && y > 9)
                        break;
                    temp /= 10;
                }
                a /= 10;
            }
            resultB = b * a0;
            resultA = a + b;
        }
    }
}
