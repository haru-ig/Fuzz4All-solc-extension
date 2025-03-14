pragma solidity ^0.8.0;
contract ComplexStorage {
    uint public first;
    uint public second;
    constructor(uint arg1, uint arg2)
    {
        first = arg1;
        second = arg2;
    }
    function Add() public pure returns (uint)
    {
        return first + second;
    }
    function Subtract() public pure returns (uint)
    {
        return first - second;
    }
    function Dividend() public pure returns (uint)
    {
        return first / second;
    }
    function Multiply() public pure returns (uint)
    {
        return first * second;
    }
}
