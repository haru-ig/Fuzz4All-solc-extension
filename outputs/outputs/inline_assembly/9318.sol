pragma solidity ^0.8.0;
contract B {
   function getNum() public view returns(uint) {
      return num;
   }
   function getNum(uint y) public returns(uint) {
      return uint(y + num);
   }
   uint num;
   function calc(uint x) public returns(uint) {
      return uint(x + num);
   }
}
