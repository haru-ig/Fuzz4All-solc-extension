pragma solidity ^0.8.0;
contract MutatedEquivalent
{
    function multiplyAdd(int a, int b) public returns (int)
    {
       return a*b+a;
    }
}
