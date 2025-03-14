pragma solidity ^0.8.0;
contract Caller {
  constructor(uint storage_data_) {
    storage = storage_data_;
  }
  Storage public storage;
  fallback() external {
    storageData = 2;
  }
  uint public storageData;
  receive() external payable {}
}
