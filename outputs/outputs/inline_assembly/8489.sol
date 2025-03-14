pragma solidity ^0.8.0;
contract Sol2
{
   uint test1;
   uint public constant test2 = 10;
   constructor() public {
      test1 = 10;
   }
   function solve() public pure returns (uint) {
      uint r = 6;
      uint i = 0;
      while (i < test2) {
         test1 += 2;
      }
      return r;
   }
}

pragma solidity ^0.8.0;
contract c2
{
   uint public constant constantValue = 10;
   uint public constant mutableValue = 20;

   pure fn m1() public view returns (uint) {
      return constantValue + mutableValue;
   }


   function m2() internal view returns (uint) {
      uint r = constantValue + 1;
      uint x = constantValue + 2;

      return constantValue + mutableValue * 2;
   }
}

pragma solidity ^0.8.0;
contract c3
{
   uint public constant constantValue = 10;
   uint public constant mutableValue = 20;

   pure function m1() public view returns (uint) {
      return constantValue + mutableValue;
   }


   function m2() internal {
      uint r = constantValue + 1;
      uint x = constantValue + 2;

      constantValue = 3;
      mutableValue = 4;
      return constantValue + mutableValue * 2;
   }
}

pragma solidity ^0.8.0;
contract c3
{
   uint public constant constantValue = 10;
