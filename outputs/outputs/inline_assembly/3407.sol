pragma solidity ^0.8.0;
contract Mutability6 {
  uint public constant ZERO = 0;
  uint value;
  constructor () {
    value = ZERO;
    value++;
  }
  function setValue (uint _value) public {
    value = _value;
  }
  function call () public {
    value++;

    value++;
  }
}
contract Mutability7 {
  uint public constant ZERO = 0;
  uint value;
  constructor () {
    value = ZERO;
    setValue(ZERO);
  }
  function setValue (uint _value) public {
    value = _value;
  }
  function call () public {
    value++;

    value = (value + 42);
  }
}
contract Mutability8 {
  uint public constant ZERO = 0;
  uint value;
  constructor () {
    value = ZERO;
    setValue();
  }
  function setValue () public {
    value++;

    value = ((uint[](0) + 42)[0]);
  }
  function call () public {
    value++;
  }
}
