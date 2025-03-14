pragma solidity ^0.8.0;
contract B {
   uint MAX_INTEGER;
   uint constant RANGE = 10;
   uint num1;
   uint num2;
   uint r;
   function setInputs(uint a, uint b) public {
      num1 = a;
      num2 = b;
   }
   function getOutputs() public returns(uint r2) {
      uint32 a_a = uint32(uint256(num1)*uint256(uint256(RANGE)));
      uint32 b_b = uint32(uint256(num2)*uint256(uint256(RANGE)));
      r2 = a_a + b_b + num1 + num2;
      r = num1 + num2;
   }
   function getOutputs_modified() public returns(uint r3) {
      r3 = num1 + num2 + num1 + r;
   }
}
}
