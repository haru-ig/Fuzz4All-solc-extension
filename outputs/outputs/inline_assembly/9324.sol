pragma solidity ^0.8.0;
contract B is A {
   function getNum1() public returns(uint) {
      num1 += 2;
      return num1 + 2;
   }
}
