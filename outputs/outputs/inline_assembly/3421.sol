pragma solidity ^0.8.0;
contract Mutability8 {
  uint public constant ZERO = 0;
  uint256 value;
  modifier modifierA () {
      value = ZERO;
      value += 1;
      _;
  }

  contract Mutability7 {
    uint public constant ZERO2 = 0;
    constructor () public {
      value = ZERO2;
      value += 1;
    }

    function setValue (uint256 _value) public modifier modifierA () {
      value = ZERO2;
      value += _value;

      revert();
    }
  }

  constructor () public {
    value = ZERO2;
    value += 1;
  }

  function call () public {
    value = 42;
  }

}
