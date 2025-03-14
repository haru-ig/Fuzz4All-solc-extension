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
  function setValue1 (uint _value) public {
    value = _value + ZERO;
  }
  function call1 () public {
    uint add = 10;
    value = ZERO + add;
  }
  function call2 () public {
    uint add = 4;
    value = add + 5;
  }
  function call3 () public {
    uint add = 3;
    value = add - 4;
  }
}
contract Mutability7 {
  uint public constant ZERO = 0;
  uint value;
  constructor () {
    value = ZERO;
    uint add = 10;
    value = ZERO + add;
  }
  function call () public {
    uint add = 4;
    value = add + 5;
  }
  function call1 () public {
    uint add = 3;
    value = add - 4;
  }
}
