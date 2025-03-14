pragma solidity ^0.8.0;
contract MutatedEquivalent4
{
    function multiplyTwo(uint256 a) public returns(uint256)
    {
       uint256 b;
       b = a;
       uint256 c;
       c = b;
       uint256 d;
       uint256 z;
       d = 3 * a;
       b = a;
       z = b / c + d ;
       c = a + d % (a - 3 * d) / 3 ;
       uint256 num = ( 3 - a + d ) % 2 + 2 ;
       if(num <= 0 ||  z/num > a/c + 3 || z > a/c + 2**256 - 1)
       {
          return a;
       }
       return (a + (z + 3 * b) % 2) - d;
    }
}
