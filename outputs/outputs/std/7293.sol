pragma solidity ^0.8.0;
contract MutantMod
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
            a = x - 1;
        }
        if (a > 0)
        {
            uint256 temp = a;
            a -= 1;
            a = temp;
        }
    }
}

contract MutantExec
{
    uint256 public a;
    constructor()
    {
        a = 0;
    }
    function f2() public
    {
        a = 50;
    }
    function f4() public
    {
        a = 50;
    }
    function f6() public
    {
        a = 50;
    }
    uint256[4] public v;
    function f1() public
    {
        v = [55, 66, 33, 88];
        if (a < 0 || a == 0)
            v[0]=50;
        else
            if (a == 0)
            {
                v[0] = 66;
                v[1] = 44;
            }
            if (a >= 1)
            {
                a -= 1;
                a = 1;
                if (v[1] == 44)
                {
                    v[1] = 0;
                    a += 1;
                }
                if (v[1] == 0 && a == 3)
                    v[0] = 66;
            }
        a += 1;
    }
}
