pragma solidity ^0.8.0;
contract SemanticallyEquivalent9 {
  uint constant constantValue = 1000;
  constructor () {
    uint256 _h = constantValue;
  }
  function x() public view returns (uint256) {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    return _h;
  }
  function y() public pure returns (uint256) {
    uint256 _h = 0;
    assembly {
      _h := constantValue
    }
    return _h;
  }
}
