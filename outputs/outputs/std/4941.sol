pragma solidity ^0.8.0;
contract MutateExample {
   uint256 private number;
   constructor() {
      number = 0;
   }
   function hello() public {
      uint256 number = 2;
      number = 5;
   }
   function isMutatable() public pure returns (uint256) {
      return number;
   }
}
