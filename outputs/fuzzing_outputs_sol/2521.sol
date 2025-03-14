pragma solidity ^0.8.0;
contract MutateStorage
{
  uint256 public storageValue;
  function fallback() public payable {
    storageValue += 10;
  }
  function receive() public {
    storageValue += 20;
  }
}
