pragma solidity ^0.8.0;
contract MutabilityOne {
  uint public value;
  constructor (uint _value) {
    value = _value;
  }
  function setZeroValue (uint _value) public {
    value = _value;
  }
  function returnZeroValue() public view returns (uint) {
    return value;
  }
}

contract MutabilityTwo {
  uint public constant ZERO = 0;
  uint public value;
  constructor (uint _value) {
    value = _value;
  }
  constructor () {
    value = ZERO;
  }
  function setZeroValue (uint _value) public {
    value = _value;
  }
  function returnZeroValue(uint _value) public view returns (uint) {
    value = _value;
    return value;
  }
}
address payable payable;
address payable payable1;
function payableMethod() public payable {
  payable = msg.sender;
}
function payableMethod1() public payable payable1 {
  payable1 = msg.sender;
}

contract MutabilityThree {
  address payable public constant ZERO;
  constructor () {
    ZERO = payable(address(0));
  }
  function setZeroValue(address payable _address) public {
    ZERO = _address;
  }
}

contract MutabilityFour {
  uint public constant ZERO = 0;
  uint public value;
  address payable payable;
  constructor (uint _value) {
    value = _value;
  }
  constructor () {
    value = ZERO;
  }
  function setZeroValue (uint _value) public {
    value = _value;
  }
  function setReturnZeroValue(uint _value) public view returns (uint) {
    value = _value;
    return value;
  }
  function setReturnZeroValue1(uint _value) public view returns (uint) {
    value = _value;
    return value;
  }
}
contract MutabilityFive {
  uint public constant ZERO = 0;
  uint public value;
  address payable payable;
  constructor (uint _value) {
    value = _value;
  }
  constructor () {
    value = ZERO;
  }
  function setZeroValue (uint _value) public {
    value = _value;
  }
  function returnZeroValue(uint _value) public {
    value = _value;
  }
  function returnZeroValue1(uint _value) public view returns (uint) {
    value = _value;
    return value;
  }
}
contract MutabilitySix {
  uint public constant ZERO = 0;
  uint public constant ONE = 1
