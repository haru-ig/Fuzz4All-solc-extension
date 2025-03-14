pragma solidity ^0.8.0;
contract MutatedMutator {
  address public minter;
  function mutatedMutator() external {
    minter = msg.sender;
  }
}
