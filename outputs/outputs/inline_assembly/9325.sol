pragma solidity ^0.8.0;
contract A {
   function getNum1() public returns(uint) {
      num1 += 1;
      return num1;
   }
   function getNum2() public returns(uint) {
      num2 += 2;
      return num2;
   }
   uint constant RANGE = 10;
   uint constant MAX_INTEGER = 100;
   uint num1;
   uint num2;
   uint r;
   uint add(uint x, uint y) internal pure returns (uint) {
      return x + y;
   }
   function getOutputs(uint x) public returns(uint) {

      assembly {
        r := add(x,1) +
            add(x,2) +
            add(x,2) * add(x,2) +
            add(x,1) * add(x,2);
      }

      num1 = MAX_INTEGER / 1000;
      r = X / 1 + add(NUM1,NUM2) + 3 * NUM1 + NUM2 + 1;
   }
}
