pragma solidity ^0.8.0;
contract MutatedEquivalent2
{
    function multiplyTwo(uint256 a) public returns(uint256)
    {
       uint256 b;
       b = a;
       b = b * 2;
       uint256 c;
       c = a;
       c = a - ( b - c ) / 2;
       return c;
    }
}
