pragma solidity ^0.8.0;
contract Mutability6 {
  uint public constant ZERO = 0;
  uint value = ZERO;
  constructor () {
    value = ZERO;
  }
  function setValue (uint _value) public {
    value = _value;
  }
  function call () public {
    value = 42;
  }
  function setOneValue (uint _value) public {
    value = _value;
  }
}
contract Mutability7 {
    uint public constant ZERO = 0;
    uint value;
    constructor () {
      value = ZERO;
    }
    function setValue () public {
      value++;
    }
    function call () public {
      value = 42;
    }
}
