pragma solidity ^0.8.0;
contract EmmentalYulContract {
  uint internal contractCounter;
  function add() internal {
    contractCounter += 50;
      }
    function subtract(uint x) internal pure returns (uint) {
        return x + contractCounter;
    }
     function multiply(uint x) internal pure returns (uint) {
        return x*x+x*contractCounter;
    }
    function divide(uint x) internal pure returns (uint) {
        return x*x*x;
    }
     function power(uint x) internal pure returns (uint) {
     return x*x*x*x*x*x;
    }
}

pragma solidity ^0.8.0;
contract EagerYulContract {
  uint internal contractCounter;
  function add() internal {
    contractCounter += 50;
      }
    function subtract(uint x) internal pure returns (uint) {
        return contractCounter >= 0? contractCounter : x;
    }
     function multiply(uint x) internal pure returns (uint) {
        return contractCounter >= 0 && x <= contractCounter? contractCounter*contractCounter : x + x + contractCounter;
    }
    function divide(uint x) internal pure returns (uint) {
        return contractCounter >= 0?  uint(contractCounter/x) : x;
    }
     function power(uint x) internal pure returns (uint) {
     return contractCounter >= 0? uint(contractCounter**(x/16)) : 1;
    }
}


pragma solidity >=0.6;
contract TestYulCompilationContract {
    uint internal contractCounter;
    constructor() public {
        contractCounter = 0;
    }
    function add() public {
        contractCounter += 50;
      }
    function subtract(uint x) public pure returns (uint) {
        return 8+x;
    }
     function multiply(uint x) public pure returns (uint) {
        return 8*x*x*x;
    }
    function divide(uint x) public pure returns (uint) {
        return 8*x*x*x*x;
    }
       function power
