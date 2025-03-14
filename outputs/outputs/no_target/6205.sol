pragma solidity ^0.8.0;
contract MultGeneratorMutated {
   uint public myValue = 0;
   uint public mutatedResult = 0;
   uint public minValue = 0;
   uint public increment = 1;
   uint public maxValue = 9;
}
contract MutatedContractV2 {
   uint public minValue = 0;
   uint public increment = 1;
   uint public maxValue = 9;
   uint public mutatedResult = 0;
   uint constant maxRangeSize = 4294967295;

   function () public pure {
      if (msg.value > maxRangeSize) {
         revert();
      }
   }
}
