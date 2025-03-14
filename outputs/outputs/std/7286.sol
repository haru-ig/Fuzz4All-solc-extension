pragma solidity ^0.8.0;
contract Mutate
{
    uint256 public a;
    uint256 public b;
    constructor()
    {
        a = 0;
        b = 0;
    }
    function f1(uint256 x) public
    {
        if (x > 0)
        {
            if (a == 0)
                a = x;
        }
        else
        {
        if (a == x)
            b = x;
        }
    }
    function f2(uint256 x) public
    {
        b = x;
        if (a > 0)
        {
            if (a == x)
                a = a;
        }
        else
        {
        if (a == x)
            a = x;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutate2
{
    uint256 public a;
    uint256 public b;
    constructor()
    {
        a = 0;
        b = 0;
    }
    function f1(uint256 x) public
    {
        if (x > 0)
        {
            if (a == 0)
                a = x;
        }
        else
        {
        if (a == x)
            a = x;
        }
    }
    function f2(uint256 x) public
    {
        if (a == 0)
        {
            if (x > 0)
            {
                a = x;
            }
            else
            {
                b = x;
            }
        }
    }
    function f3(uint256 x) public
    {
        b = a;
        if (b == 0)
        {
            b = x;
        }
        if (a > 0)
        {
            a = x;
        }
        else
        {
        if (a == x)
            b = x;
        }
    }
    function f4(uint256 x) public
    {
        if (a == 0)
        {
            a = x;
        }
        b = x;
    }
}
