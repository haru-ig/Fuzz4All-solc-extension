pragma solidity ^0.8.0;
contract SemanticalEquiv10
{
    function f(uint n) public pure returns (uint32)
    {
        return uint32(n);
    }

    function f(uint n) public pure returns (uint8)
    {
        return uint8(n);
    }

    function f(uint n) public pure returns (uint)
    {
        return uint(n);
    }

    function f(uint n) public pure returns (uint64)
    {
        return uint64(n);
    }
}
