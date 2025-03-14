pragma solidity ^0.8.0;
contract Mutation
{
    uint public a;
    uint256 public b;
    constructor()
    {
        a = 50;
        b = 100;
    }
    function f2() public
    {
        uint256 x = a + b + 1;
        b = x;
    }
    function f4() public
    {
        uint256 x = b - a;
        a = x;
    }
    function f6() public
    {
        a++;
        b++;
    }
    function f1(uint x) public
    {
        uint256 y = a;
        a = x + a - b + 1;
        b = y;
    }
    function setA(uint x) public
    {
        a = x;
    }
    function setB(uint x) public
    {
        b = x;
    }
}
