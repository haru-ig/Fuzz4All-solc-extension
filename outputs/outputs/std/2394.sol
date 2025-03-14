pragma solidity ^0.8.0;
contract MutatedEquivalent3
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
       c = a % c + d;
       uint256 num = ( 3 - d ) + 2 ;
       if(num <= 0 || z/num < 0 || z < 0 && z > 2**256 - 1)
       {
          return 0;
       }
       return a + (z + d) % 3;
    }
}
