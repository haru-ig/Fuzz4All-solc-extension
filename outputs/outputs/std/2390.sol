pragma solidity ^0.8.0;
contract MutatedEquivalent3
{
    function multiplyTwo(uint256 a) public returns(uint256)
    {
       uint256 p;
       uint256 e;
       p = a;
       e = a * 2;
       p = ( p*e ) / 2;
       uint256 c;
       c = a;
       uint256 b;
       b = a - p*p;
       c = c - b;
       b = c*c;
       b = b - 4*p*p;
       return b;
    }
}
