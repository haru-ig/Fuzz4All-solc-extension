pragma solidity ^0.8.0;
contract SemanticallyEquivalent11 {
  uint256 constant constantValue = 1000;
  constructor () {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    _h = 2000;
  }
  function x() pure public returns (uint) {
    return uint(constantValue);
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent12 {
  uint constant constantValue = 1000;
  uint256 public oneValue;
  constructor (uint input1) {
    oneValue = input1;
    if (oneValue >= constantValue) {
      oneValue = constantValue;
    }
  }
  function x() pure public returns (uint) {
    uint result = constantValue;
    if (oneValue >= result) {
      oneValue = result;
    }
    return uint(oneValue);
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent13 {
  uint constant constantValue = 1000;
  uint256 public oneValue;
  constructor (uint input1) {
    oneValue = input1;
    if (oneValue > constantValue) {
      oneValue -= constantValue;
    }
  }
  function x() pure public returns (uint) {
    uint result = constantValue;
    if (oneValue > result) {
      oneValue = (result - constantValue) + constantValue;
    }
    return uint(oneValue);
  }
}
