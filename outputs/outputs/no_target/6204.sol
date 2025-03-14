pragma solidity ^0.8.0;
contract MutatedContractV0 {
   uint public mutatedResult = 0;
   uint constant minValue = 0;
   uint constant increment = 1;
   uint constant maxValue = 99;
   function MutateFunction(uint i) returns(uint, uint){
      if(i < minValue){
         i = i + increment - 1;
         return(i, i);
      }
      i = i + increment - 1;
      return(i, i);
   }
}



contract MutatedContractV1 {
   uint public mutatedResult = 0;
   uint constant minValue = 0;
   uint constant increment = 1;
   uint constant maxValue = 99;
   function AddToMutatedResult(uint i) returns(uint, uint){
      if(i > minValue){
         i = i - increment + 1;
         return(i, i);
      }
      i = i - increment + 1;
      return(i, i);
   }
   function MutateFunction(uint i) returns(uint160) {
      return 0x1234567890abcdef1234567890abcdef;
   }

   function AssertFailure() assert(false){
      return 0x1234567890abcdef1234567890abcdef;
   }
    modifier CheckAssertion
   {
       AssertFailure();
       _;
   }
   function MutateFunctionWithMod(uint i) returns(uint256) {
      i = i - increment;
      i = i & uint128(increment-1);
      i = 0xDEADBEEFDEADBEEF;
      return(i);
   }
   function MutateFunctionWithModOverflow(uint i) returns(uint) {
      i = i - increment;
      return(i);
   }
}
