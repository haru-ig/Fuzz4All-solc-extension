pragma solidity ^0.8.0;

contract SemanticE {
  uint constant _INCREMENT_NUMBER_GAS = 1;
  uint constant _DECREMENT_NUMBER_GAS = 1;
  uint8 public _number;
  uint internal _local;

  modifier nonzero(uint _gas) {
    if (_gas == 0) revert("No gas supplied.");
    _;
  }

  constructor() {
    _number = 0;
    _local = 0;
  }

  function incrementNumber() public nonzero(_INCREMENT_NUMBER_GAS) {
    _number = _number + _local + 1;
    _local = 0;
  }

  function decrementNumber() public nonzero(_DECREMENT_NUMBER_GAS) {
    _number = _number + _local - 1;
    _local = 0;
  }
}
