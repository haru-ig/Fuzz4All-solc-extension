pragma solidity ^0.8.0;
contract MutatedEquivalent3
{
    function multiplyTwo(uint256 a, uint256 b) public returns(uint256)
    {
       uint256 c;
       c = a + b;
       b = a;
       b = ( b / 3 ) * 3;
       c = a;
       c = a - ( c - b ) / 2;
       return c;
    }
}
