pragma solidity ^0.8.0;
contract SemanticallyEquivalent7 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint256) {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    return _h;
  }
}
pragma solidity ^0.8.0;
