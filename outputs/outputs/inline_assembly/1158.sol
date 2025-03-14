pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedLogCaller {
  bytes32 constant X = '1001910';
  bytes32 x;
  address who;
  constructor(address target) public {
    x = X;
  }
  function _calculate() public pure returns (bytes32) {
    return X;
  }
  function _modifyLog(string calldata x) public{
    who = msg.sender;
  }
}
