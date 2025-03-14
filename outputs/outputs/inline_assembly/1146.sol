pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedClass {
  uint constant X = 45;
  uint x;
  constructor(uint arg) public {
    x = X;
  }
  function _calculate(uint _x) public pure returns (uint) {
    return _x + 1;
  }
  function _modify() public {
    x = 50;

    x++;
  }
}
