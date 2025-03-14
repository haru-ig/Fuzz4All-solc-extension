pragma solidity ^0.8.0;
contract Mutability4 {
  uint public constant ZERO = 0;
  uint value = ZERO;
  constructor () {
    value = ZERO;
  }
  function setValue (uint _value) public {
    value = _value;
  }
  function call () public {
    value++;
  }
}

pragma solidity ^0.8.0;
contract Mutability5 {
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
