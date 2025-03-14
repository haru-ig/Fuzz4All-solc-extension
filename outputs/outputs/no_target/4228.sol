pragma solidity ^0.8.0;
contract P12 {
  function i(uint) public returns (uint) {
    return i2(uint());
  }

  function i2(uint) public pure returns (uint) {
    return 2;
  }
}
