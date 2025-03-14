pragma solidity ^0.8.0;
contract Mutated {
  uint256 public constant value = 1;
  uint256 public constant otherValue = 7;
  function mutate(uint256) public pure {}
}

contract Fallback {
  event WriteValue(uint256 value);
  event WriteOtherValue(uint256 value);

  uint256 public value;

  fallback() external {
    value = value.add(1);
    emit WriteValue(value);
  }

  receive() external pure {
    value = otherValue;
    emit WriteOtherValue(value);
  }
}

contract Caller {
  fallback();

  uint256 public result;

  function call(uint256 _value) public {
    result = result.add(_value);
    value = result;
    emit WriteValue(_value);
  }
}
