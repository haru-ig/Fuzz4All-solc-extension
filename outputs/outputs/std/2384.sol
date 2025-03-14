pragma solidity ^0.8.0;
contract MutatedEquivalent3
{
    function multiplyAdd2(uint256 a) public returns(uint256)
    {
       uint256 b;
       b = a;
       b = b * 4;
       return b;
    }
}
