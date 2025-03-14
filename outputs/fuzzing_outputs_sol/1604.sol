pragma solidity ^0.8.0;
contract Storage {
  constructor() {
    _store();
  }

  function _store() internal {
    storageData = 1;
  }
  uint public storageData;
}
