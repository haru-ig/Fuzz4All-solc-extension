pragma solidity ^0.8.0;
contract A {
   function getNum1(uint x) public returns(uint) {
      num1 += 2;
      return num1;
   }
   uint constant RANGE = 10;
   uint const MAX_INTEGER = 100;
   uint num1;

   uint constant INITIAL_VALUE = 4600;
   uint constant INTERVAL = 8560;
   uint constant DURATION = 73904;
   uint num2;
   uint r;
   mapping(uint => uint) public xHistory;
   constructor() public {
      num2 = INITIAL_VALUE;
   }
   function getOutputs(uint x) public returns(uint) {
      num1 = MAX_INTEGER / 1000;
      bool y = true;
      for (uint i = 1; y && i <= DURATION; i++) {
         r = x * num1 + num2;
         num2 += 2;
         num1 = INITIAL_VALUE + INTERVAL;
         y = false;
      }
   }
   function calc() public returns(uint) {
      r = num1 + num2;
      num2 += 2;
      num1 = INITIAL_VALUE + INTERVAL;
      return r;
   }
   function getHistory(uint x) public view returns(uint) {
      uint tmp = xHistory[x];
      uint history = INITIAL_VALUE, j = x;
      while(j > INITIAL_VALUE) {
         j -= X;
         history += INTERVAL;
      }
      return history;
   }
}
