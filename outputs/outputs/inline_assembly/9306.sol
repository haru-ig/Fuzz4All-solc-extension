pragma solidity ^0.8.0;
contract C {
   uint i;
   function setInputs(uint i) public {
      this.i = i;
   }
   function getOutputs() public returns(uint j) {
      if (true) B().setInputs(1, i);
      j = -1 + 2 * r;
   }
   function getOutputs_modified() public returns(uint j) {
      if (true) B().setInputs(123123, 23123);
   }
}
