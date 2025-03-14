pragma solidity ^0.8.0;
contract WriteStorageMutation {
  uint256 public storageValue;
  function write() public pure {

    storageValue -= 1;
  }
}
