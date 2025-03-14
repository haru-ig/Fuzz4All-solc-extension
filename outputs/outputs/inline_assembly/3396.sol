pragma solidity ^0.8.0;
contract Mutability2 {
  uint public constant ZERO = 0;
  uint public value;
  constructor (uint _value) {
    value = _value;
  }
  function setValue (uint _value) public {
    value = _value;
  }
}


library Mutability2Library {

  uint public constant ZERO = 0;





  function getValue (uint _value) internal pure returns (uint) {
    uint value = _value;
    if (_value > uint(0)) {
      value = getValue(_value);
    }
    return value;
  }

}

pragma solidity ^0.8.0;
contract Mutability2 {
  uint public constant ZERO = 0;

  uint public value;

  constructor (uint _value) {
    value = _value;
  }

  function getValue (uint _value) internal pure returns (uint) {
    require(_value > ZERO, "negative number");
    uint value = _value;
    if (_value > ZERO) {
      value = getValue(_value);
    }
    return value;
  }
}


pragma solidity ^0.8.0;

library Mutability2Library {

  uint public constant ZERO = 0;

  uint public value;


  function getValue (uint _value) internal pure returns (uint) {
    require (_value > ZERO, "negative number");
    uint value = _value;
    uint newValue = value;
    if (_value > ZERO) {
      newValue = getValue(_value);
    }
    return newValue;
  }

  function setValue (uint _value) public {
    value = _value;
  }

}


pragma solidity ^0.8.0;
contract Mutability2 {

  uint public constant ZERO = 0;

  uint public value;


  function getValue (uint _value) internal pure returns (uint) {
    require (_value > ZERO, "negative number");
    uint value = _value;
    uint newValue = value;
    uint newSize = value.size();
    while (value.compareTo(newValue) > ZERO);
    value = newValue;
    value = value
