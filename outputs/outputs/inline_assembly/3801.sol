pragma solidity ^0.8.0;
contract SemanticallyEquivalent6 {
  constructor () {
    uint256 h = constantValue();
  }
  uint constant constantValue = 10000;
  function x() pure public returns (uint256) {
    uint256 h;
    assembly {
      h := constantValue
    }
    return h;
  }
}
pragma solidity ^0.8.0;
