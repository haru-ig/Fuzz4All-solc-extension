pragma solidity ^0.8.0;
modifier modifier1 (){
  require(msg.sender == msg.data);
  _;
 }


contract SemanticYulContract {
   uint internal _contractCounter;
    uint constant c = 50;
   function add() internal {
    _contractCounter += 50;
       }
   function subtract(uint x) internal pure returns (uint) {
      return 8 + x;
    }
    function multiply(uint x) internal pure returns (uint) {
      return x * c* c* c* c;
    }
    function divide(uint x) internal pure returns (uint) {
      return x * c* c* c* c* c;
    }
    function power(uint x) internal pure returns (uint) {
     return x * c * c* c* c* c;
    }
    function addBy(uint x) internal {
   _contractCounter += 50 + x;
    }
}

pragma solidity ^0.8.0;
contract SemanticYulContractWithModifier {
   uint internal _contractCounter;
    uint constant c = 50;
   function add() internal {
    _contractCounter += 50;
       }
   function subtract(uint x) internal pure returns (uint) {
      return 8 + x;
    }
    function multiply(uint x) internal pure returns (uint) {
      return x * c* c* c* c;
    }
    function divide(uint x) internal pure returns (uint) {
      return x * c* c* c* c* c;
    }
    function power(uint x) internal pure returns (uint) {
     return x * c * c* c* c* c;
    }
    function addBy(uint x) internal modifier1(){
      _contractCounter += 50 + x;

    }
}
