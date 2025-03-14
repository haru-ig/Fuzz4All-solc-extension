pragma solidity ^0.8.0;
contract Foo{
pragma solidity ^0.8.0;
  uint256 a;
  constructor(uint256 _x ) {
  a = _x;
   }
  function f() public view returns(uint256){
   uint256 b = a + 1;

   return b;
    }
  function g() internal returns(uint256){
   uint256 b = 1 + a;
   b = a + a - b;
   return b;
   }
}
