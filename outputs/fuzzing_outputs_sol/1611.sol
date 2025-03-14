pragma solidity ^0.8.0;
contract AddressFunction {
  uint256 public storageData;
  function Function() {
    _store();
  }
  function _store() internal {
    storageData = _increment();
  }
  function _increment() internal view returns (uint256) {
    return storageData + 1;
  }
}
function Example1() {
  AddressFunction addressFunction = new AddressFunction();
  addressFunction.Function();
}
