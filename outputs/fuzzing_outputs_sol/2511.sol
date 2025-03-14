pragma solidity ^0.8.0;
contract WriteStorage {
  uint256 public storageValue;
  address payable public modifier onlyAddress(address x) { return msg.sender == x; }
  function write() public pure {
    storageValue = 1905424;
    emit write();
  }
}
