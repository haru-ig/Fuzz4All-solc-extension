pragma solidity ^0.8.0;
contract Mutability2 {
  address public constant owner = msg.sender;
  Mutability public value;
  constructor () {
    value = new Mutability();
  }
  function setValue (uint _value) public {
    value.setValue(_value);
    require(msg.sender == address(value));
  }
}

pragma solidity ^0.8.0;
contract Mutability3 {
  address public constant owner = msg.sender;
  Mutability public value;
  constructor () {
    value = new Mutability();
  }
  function setValue (uint _value) public {
    value.setValue(_value);
    require(msg.sender == address(value));
    require(value.value == _value);
  }
}

pragma solidity ^0.8.0;
contract Mutability4 {
  address public constant owner = msg.sender;
  Mutability public value;
  constructor (
   address _initValue
  ) {
    value = new Mutability();
    value.setValue(_initValue);
  }
  function setValue (uint _value) public {
    value.setValue(_value);
    require(msg.sender == address(value));
  }
}

pragma solidity ^0.8.0;
contract Mutability5 {
  address public constant owner = msg.sender;
  Mutability public value;
  constructor (Mutability _value) {
    value = _value;
  }
  function setValue (uint _value) public {
    value.setValue(_value);
    require(msg.sender == address(value));
  }
}

pragma solidity ^0.8.0;
contract Mutability6 {
  address public constant owner = msg.sender;
  Mutability public value;
  constructor (Mutability memory _value) {
    value = _value;
  }
  function setValue (uint _value) public {
    value.setValue(_value);
    require(msg.sender == address(value));
  }
}

pragma solidity ^0.8.0;
contract Mutability7 {
  address public constant owner = msg.sender;
  Mutability2 public anotherValue;
  constructor (Mutability2 memory _anotherValue ) {
    anotherValue = _anotherValue;
  }
  function setValue (uint _value) public {
    anotherValue.setValue(_value);
    require(msg.sender == address(anotherValue));
