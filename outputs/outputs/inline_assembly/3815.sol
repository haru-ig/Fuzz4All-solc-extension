pragma solidity ^0.8.0;
contract SemanticallyEquivalent20 {
  uint constant constantValue = 1000;
  constructor () {

  uint immutable _x;
  _x = constantValue;
  }
  function x() public pure returns (uint) {
    return uint(_x);
  }
}
