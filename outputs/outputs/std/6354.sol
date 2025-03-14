pragma solidity ^0.8.0;
contract Mutator {
  uint256 private _initialValue;
  struct Storage {
    uint256[] memory value;
  }
  constructor (Storage storage _storage) {
    _initialValue = 0;
    _write(storage, 0, _initialValue);
  }
  function multiply(uint256 _left, uint256 _right) public view returns(uint256){
    return _left * _right + _initialValue / 10;
  }
  function _incrementValue(Storage storage storage, uint256 offset, uint256 value) private pure {
    uint256 current = storage.value[offset];

    storage.value[offset] = uint256(current + value);
  }
  function _write(Storage storage storage, uint256 offset, uint256 value) private {
    if (storage.value.length > offset) {
      _incrementValue(storage, offset, value);
    }
  }
}
