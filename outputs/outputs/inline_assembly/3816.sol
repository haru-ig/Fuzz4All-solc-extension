pragma solidity ^0.8.0;
contract SemanticallyEquivalent9 {
  uint constant constantValue = 1000;
  constructor () {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    _h = 2000;
  }
  function x() pure public returns (uint) {
    uint h = constantValue;
    return uint(h);
  }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalent8 {
  uint constant constantValue = 1000;
  constructor () {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    _h = 2000;
  }
  function x() pure public returns (uint) {
    uint256 h = constantValue;
    return uint(h);
  }
}
