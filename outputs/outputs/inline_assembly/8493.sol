pragma solidity ^0.8.0;
contract SolveWithSubtraction
{
   uint public constant test3 = 100;
   uint public constant test1 = 100;
   function solve() public pure returns (uint) {
      uint r;
      r = sub(test1, 1);
      r = r - 1;
      address addr1;
      uint ptr2 = 2 * 100;
      r = sub(r, addr1);
      r = r - ptr2;
      uint i = 0;
      while (i < 10) {
         i++;
      }
      r = r - i;
      return r;
   }
}
