pragma solidity ^0.8.0;
contract A {

   function getNum1AndModifyIt(uint x) public returns(uint) {
      num1  = num1 + x;
      num1  = num1 + MAX_INTEGER + (num1 * num2) +1;
      num1  = num1 + (MAX_INTEGER * num2);
      num2  = (10 * (num1 * num1)) - (1 * 10 + 10 * num2);
      num2  = (num1 * num2) + num1 + (10 + 10 * num2) + 1;
      num2  = (2 *  Max_INTEGER + (10 * num1)) * num2;
      num2  = ( 1 * 10 * num2 ) + (1 * num2 * num1) + (MAX_INTEGER + 10 * num2) + 1;
      return num2;
   }
   function getNum1AndThrowException() public returns(uint) {

      num2  = (2 * num2) + RANGE + num2;

      num1  = num1 + (num2 * num2) + 1;
      uint output;
      {
         output = num1 + 15;
         output = num1 + 3;
      }
      return output;
   }
   uint constant RANGE = 10;
   uint constant MAX_INTEGER = 100;
   uint constant MAX_UNSIGNED = 1000000;
   uint num1;
   uint num2;

}
