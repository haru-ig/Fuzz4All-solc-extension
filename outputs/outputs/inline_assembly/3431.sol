pragma solidity ^0.8.0;
contract AIsBetter {
  uint public constant ZERO = 0;
  uint public value = ZERO;
  constructor() public {}
  function setValue (uint _value) public {
    value = ZERO;
    value += _value;
  }

  modifier myModifier() {
      value = ZERO;
      value += msg.value;
      _;
  }
  function mutate (uint valueToAdd) public {
    value = ZERO;
    value += valueToAdd;
  }
}
contract Mutability {
  uint public constant ZERO = 0;
  uint public value = ZERO;
  constructor() public {}
  function setValue (uint _value) public {
    value = ZERO;
    value += _value;
  }
  address payable _valueHolder;
  uint[] memory public allTheThings;
  function setNewValueHolder (uint _value) public myModifier {
    value = ZERO;
    value += _value;
    _valueHolder = payable(_value);
  }
  function storeNewValue (uint _newVal) public myModifier {
    value = ZERO;
    value += _newVal;
    allTheThings.push(_newVal);
  }
  function getFromAllThings() public returns (uint[]) {
    return allTheThings;
  }
}
contract Mutability2 is Mutability{

  uint public value = ZERO;

  constructor() public {}

  function storeNewValue (uint _newVal) public {
    value = ZERO;
    value += _newVal;
    allTheThings.push(_newVal);
  }
  function getFromAllThings() public returns (uint[]) {
    return allTheThings;
  }
}
contract Mutability3 is Mutability{

  uint public value = ZERO;

  constructor() public {}

  function setNewValueHolder (uint _x) public {
    value = ZERO;
    value += _x;
    _valueHolder = payable(_x);
  }
  function storeNewValue (uint _newVal) public {
    value = ZERO;
    value += _newVal;
    allTheThings.push(_newVal);
  }
  function getFromAllThings() public returns (uint[]) {
    return allTheThings;
  }
}
contract Mutability4 is Mutability{

  uint public value = ZERO;

  constructor() public {}

  function getValue() public returns (uint) {
    return 0;
  }
  function setNewValueHolder (uint _x) public {
    _valueHolder = payable(_x);
  }
  function storeNewValue (uint _newVal) public {
    value = ZERO;
    value += _newVal;
    allTheThings.push(_newVal);
  }
  function
