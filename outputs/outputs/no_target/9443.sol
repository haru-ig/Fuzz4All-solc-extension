pragma solidity ^0.8.0;
contract SemanticalEquiv53
{
    function f(uint x) public view returns (uint x)
    {
        x = x - 1;
        x = x - 2;
        x = x * 3;
        x = x / 2;
        x = 1;
    }
}
contract SemanticalEquiv54
{
    function f(uint8 x) public view returns (uint x)
    {
        x = x - 256;
        x = x + 1;
        x = x * 2;
        x = x / 2;
        x = 1;
    }
}
