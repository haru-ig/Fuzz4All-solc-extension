pragma solidity ^0.8.0;
contract SolveWithModul
{
   uint public constant test3 = 100;
   uint public constant test1 = 100;
   function solve() public pure returns (uint256) {
      uint256 r;
      if (test1 == 0) {
         r = 1;
      } else {
         uint256 j = 0;
         while (j < 10) {
            j++;
         }
         r = 2;
      }
      return r;
   }
}


solidity solidity ^0.8.0;
contract SolveWithModul
{
   uint public constant test3 = 100;
   uint public constant test1 = 100;
   function solve() public pure returns (string memory){
      uint r;
      if (test1 == 0) {
         r = 1;
      } else {
         uint i = 0;
         while (i < 10) {
            i++;
         }
         r = 2;
      }
      return intToString(r);
   }
   function intToString(uint i) private pure returns (string memory) {
      if (i == 1) {
         return "1";
      }
      string memory r = "";
      r = r + str(uint(65535 / i) - 1);
      r = r + intToString(uint(i - 1));
      return r;
   }
}
