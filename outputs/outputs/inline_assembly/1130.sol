pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedContract {
  uint x;
  constructor() public{
    x = 0;
  }
  function _calculate() public pure returns (uint) {

    return 2;
  }
  function _modify() public {
    x = 100;
  }
}
