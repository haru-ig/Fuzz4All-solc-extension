pragma solidity ^0.8.0;
contract E5G {
  uint8 _number1;
uint8 _number2;
constructor(uint8 num1, uint8 num2) {
    _number1 = num1 + num2;
    _number2 = num1 + num2;
  }
  function add() public returns (uint8){
    return _number1 + _number2;
  }
}
