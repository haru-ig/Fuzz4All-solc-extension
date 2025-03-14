pragma solidity ^0.8.0;
contract MutatedEquivalent2
{
    function multiplyAdd1(uint256 a) public returns(uint256)
    {
       uint256 b;
       b = 4;
       b = b * 2;
       return b + a;
    }
}
