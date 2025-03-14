pragma solidity ^0.8.0;
contract FallbackStorage {
  uint public storageData;
  constructor() {
    _transfer();
  }
  receive() external payable {
    _transfer();
  }
  function _transfer() internal {
    storageData = 1;
  }
}
