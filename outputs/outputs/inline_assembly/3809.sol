pragma solidity ^0.8.0;
contract SemanticallyEquivalent9 is SemanticallyEquivalent8 {
  constructor () {
  }
  function x() public view returns (uint256) {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    return _h;
  }
}
