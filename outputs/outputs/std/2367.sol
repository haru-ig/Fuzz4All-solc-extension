pragma solidity ^0.8.0;
contract MutatedEquivalent
{
    int public x = 5;
    function multiplyAdd(int _p) public returns(int)
    {
        return 10 * _p + x;
    }
}
