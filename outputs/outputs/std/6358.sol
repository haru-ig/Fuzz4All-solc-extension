pragma solidity ^0.8.0;
contract Array {
  address private _owner;
  bool private _initialized;

  uint256 private _length;

  bytes32 private _elementType;

  bytes32 private _arrayAddress;
  constructor() {
    _initialValue;
    _initialized;
    _length;
    _elementType;
    _arrayAddress;
  }
  function initialize(address owner) public {
    _owner = owner;
    _initialized = true;
  }
  function push(bytes32 elementType) public {
    require(exists(_arrayAddress), "Address does not exist");
    _length++;
    _elementType = elementType;
    assembly {

      mstore(add(_arrayAddress, 0x42), add(add(_arrayAddress, 0x40), mload(_arrayAddress)))
    }
  }
}
