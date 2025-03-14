pragma solidity ^0.8.0;
contract EquivalentToContract_old {
  uint constant constant1 = 10;
  uint constant constant2 = 11;
  uint constant constant10 = 19;
}
contract EquivalentToContract_new {
  uint constant constant1 = 10;
  uint constant constant2 = 11;
  uint constant constant10 = 19;

  function getConstant() public pure returns (uint) {
    return constant10;
  }
}
