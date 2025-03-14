pragma solidity ^0.8.0;
contract SolveWithSemanticModul2
{
   uint public constant test1 = 100;
   uint public constant test2 = 100;
   uint y;
   function solve() public view returns (uint) {
      uint r = (uint(uint(uint(uint256(uint256(uint(30)),test1)))))) + test1;
      if (test2 == 100) {
         return 1;
      } else {
         if (test1 == test2) {
            return 0;
         } else {
            return 3;
         }
      }
      return r;
   }
}

pragma solidity ^0.8.0;
contract IsContract {

  constructor() {
  }


  modifier isContract() {
      uint temp = uint(keccak256(abi.encodePacked(
        '0x70a082310000000000000000000000000000000000000000000000000000f573d563d7c1219b7a95d8de7d981f312a0193d7a2603501af54940')));

      /* See https:
