pragma solidity ^0.8.0;
contract CallContract {
  constructor(bool _callStorage) {
    if(_callStorage) _storage();
  }
  function _storage() internal {
    storageContract.push(storageData);
  }
  uint[] public storageContract;
  bytes public data;
}
