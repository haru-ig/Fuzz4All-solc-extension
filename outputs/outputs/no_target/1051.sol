pragma solidity ^0.8.0;
contract SemanticMutation21
{
    uint8 a;
    uint8 b;
    uint8 c;
    uint value;
    function a() public view returns (uint)
    {
        value = 4;
        if (value >= 400)
        {
            c = 5;
        }
        else
        {
            c = 3;
        }
        b=8;
        a = 5;
    }
    function b() public pure returns (uint)
    {
        return 5;
    }
    function c() public pure returns (uint)
    {
        if (value >= 400)
        {
            c = 5;
        }
        else
        {
            c = 3;
        }
        b=8;
        a = 5;
        return 5;
    }
    function d() public pure returns (uint)
    {
        return 5;
    }
    function e() public pure returns (uint)
    {
        if (value >= 400)
        {
            c = 5;
        }
        else
        {
            c = 3;
        }
        b=8;
        a = 5;
        return 5;
    }
    function f() public pure returns (uint)
    {
        return 5;
    }
    function g() public pure returns (uint)
    {
        if (value >= 400)
        {
            c = 5;
        }
        else
        {
            c = 3;
        }
        b=8;
        a = 5;
        return 5;
    }
    function h() public pure returns (uint)
    {
        return 5;
    }
    function i() public pure returns (uint)
    {
        if (value >= 400)
        {
            c = 5;
        }
        else
        {
            c = 3;
        }
        b=8;
        a = 5;
        return 5;
    }
    function j() public pure returns (uint)
    {
        return 5;
    }
    function k() public pure returns (uint)
    {
        if (value >= 400)
        {
            c = 5;
        }
        else
        {
            c = 3;
        }
        b=8;
        a = 5;
        return 5;
    }
    function l() public pure returns (uint)
    {
        return 5;
    }
    function m() public pure returns (uint)
    {
        if (value >= 400)
        {
            c = 5;
        }
        else
        {
            c = 3;
        }
        b=8;
        a = 5;
        return 5;
    }
    function n() public pure returns (uint)
    {
        return
