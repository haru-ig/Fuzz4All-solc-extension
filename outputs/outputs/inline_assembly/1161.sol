pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedLogCaller {
  bytes32 constant X = '1001910';
  bytes32 x;
  address who;
  mapping(address => bytes32) xMap;
  function _calculate() public pure returns (bytes32) {
    return X;
  }
  function _modifyLog(string calldata x) public{
    bytes32 t = xMap[msg.sender];
  }
  function _log(string calldata log) public{
    bytes32 t = xMap[x];
  }
}
