pragma solidity ^0.8.0;
contract Mutability {
  uint public constant ZERO = 1;
  uint public value;
  constructor () {
    value = ZERO;
  }
  function setValue (uint _value) public {
    value = _value;
  }
}

pragma solidity ^0.8.0;
contract Mutability {
  uint public constant ZERO = 1;
  uint public value;
  constructor () {
    selfdestruct(0);
  }
  function setValue (uint _value) public {
    value = _value;
  }
}

pragma solidity ^0.8.0;
contract Mutability {
  uint public constant ZERO = 1;
  uint public value;
  constructor () {
    externalStorage = ZERO;
  }
  function setValue (uint _value) public {
    value = _value;
  }
}
