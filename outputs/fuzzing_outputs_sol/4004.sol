pragma solidity ^0.8.0;
contract Example25 {
  struct State {
    bytes32 stateId;
  }

  address payable contractAddr;

  bytes32 stateId;
  bytes32[] memory previousEvents;

  fallback() external payable {
    contractAddr.transfer(msg.value);
  }
}
