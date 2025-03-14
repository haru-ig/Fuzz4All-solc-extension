pragma solidity ^0.8.0;
contract MutatedSemanticYulContract {
    uint internal contractCounter;

    function add() internal {
        contractCounter += 50;
    }
  function subtract() internal pure returns (uint) {
        return 8 - contractCounter;
    }
    function multiply() internal pure returns (uint) {
        return (contractCounter + 1)*contractCounter + 5;
    }
     function divide() internal pure returns (uint) {
    return contractCounter/contractCounter;
    }
       function power () internal pure returns (uint) {
   return contractCounter*(2*contractCounter+1).pow(contractCounter);
     }
}
