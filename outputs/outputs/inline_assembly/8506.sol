pragma solidity ^0.8.0;
contract SolveWithSemanticModulAgain
{
   uint public constant test2 = 100;
   uint public constant test3 = 10;
   uint public constant test = 10;
   uint public constant test2 = 7;
   function solve() public pure returns (uint)
   {
      uint r;
      if (test2 == 7) {
         r = 1;
         uint i;
         for (i = test3; i < test; i++) {
         }
         return 2;
      }

      if (test3 == 10)
      {
         r = 2;
      }
      else
      {
         r = 1;
      }
      return r;
   }
}

pragma solidity ^0.8.0;
contract SolveWithSemanticModulWithConstant
{
   uint public constant test = 7;
   uint public constant test2 = 12;
   uint public constant test3 = 7;
   function solve() public pure returns (uint)
   {
      uint r;
      if (test3 == 10)
      {
         r = 2;
      }
      else
      {
         uint i;
         for (i = test2; i < 2; i++) {
         }
         r = 1;
      }
      return r;
   }
}
