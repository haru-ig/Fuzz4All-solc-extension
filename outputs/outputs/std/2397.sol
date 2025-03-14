pragma solidity ^0.8.0;
contract MutatedEquivalent4
{
    function multiplyTwo(uint256 a) public returns(uint256)
    {
       uint256 b;
       uint256 c;
       c = a;
       b = a;
       uint256 d;
       d = c;
       b = a / c + d ;
       c = a + d % c;
       uint256 num = 3 - c;
       if(num <= 0)
       {
          return 0;
       }
       result = b + (a + d) % 3;
       return 0;
    }
}
