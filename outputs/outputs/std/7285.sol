pragma solidity ^0.8.0;
contract Mutation
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
        if (a > 0 && b > 0)
            a = x % b;
    }
    function f2(uint256 x) public
    {
        uint256 a2 = 1 / x + 1 / a + 1 / b;
    }
    function f4(uint256 x) public
    {
        a = x % a;
        b = x % b;
    }
}
