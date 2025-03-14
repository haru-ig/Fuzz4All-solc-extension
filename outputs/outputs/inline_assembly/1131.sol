pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedContract {
  mapping(uint => bool) executed;
  constructor() public{
    executed[X] = false;
  }
  function _calculate() public pure returns (uint) {
    executed[X] = true;
    return 1;
  }
  function _modify() public {
    executed[X] = true;
    if (x == X) {
      x++;
    }
    else {
      x--;
    }
  }
}
