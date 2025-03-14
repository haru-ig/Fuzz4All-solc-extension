pragma solidity ^0.8.0;
contract SolveModul2
{
   bool public boolVar = true;
   uint public test1 = 100;
   function solve() public pure returns (bool) {

      bool result1 = test1 > 0;

      bool result2 = boolVar;

      bool result3 = test1 < 100;

      bool result4 =!boolVar;

      bool result5 = test1 % 2 == 0;

      bool result6 = test1 % 2 == 1;

      return result1 ^ result2 ^ result3 ^ result4 ^ result5 ^ result6;
   }
}
