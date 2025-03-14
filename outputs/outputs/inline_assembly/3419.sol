pragma solidity ^0.8.0;
contract Mutability7 {
  uint public constant ZERO = 0;
  uint public constant ONE = 1;
  uint public constant INTWELL = 2;
  uint private constant TWO = 2;
  uint public constant MINUS_ONE = -1;
  uint constant INCH = 43164;
  uint public value;
  constructor () public {
    value = ZERO;
  }
  function setValue (uint _value) public {
    value = ZERO;
    newValue(_value);
  }
  function newValue (uint _value) internal {
    value -= _value;
  }
  function call () public {
    value = ONE;
    newValue(MINUS_ONE);
    newValue(TWO);
    newValue(MINUS_ONE);
    newValue(INTWELL);
    newValue(MINUS_ONE);
    newValue(INCH);
  }
  function setValue2 (uint _value) public {
    value = ZERO;
    newValue(_value);
  }
  function newValue2 (uint _value) internal {
    value -= _value;
  }
}


pragma solidity ^0.8.0;
contract Mutability8 {
  uint public constant NULL = 0x00000000000000000000000000000000;
  uint  public constant ZER0 = 0x0000000000000000000000000000000;
  uint  public constant ZER1 = 0x000000000000000000000000000000001;
  uint public constant NEG0 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
  int  public constant NEG1 = -1;
  uint public value;
  constructor () public {
    value = NULL;
  }
  function setValue (uint _value) public {
    value = NULL;
    value = 16;
    value = 32 / 4;
  }
}
