pragma solidity ^0.8.0;
contract Contract1 {
  bytes32 public constant valueKey = 0xff;
  bool public _valueStored = false;
  mapping(address => bool) public _valueToBool;
  constructor() {
    _valueToBool[_receiver()] = true;
    _valueStored = true;
  }
  fallback() external payable {

    bytes32 myKey = message.data[valueKey];
    (bool matchWithoutKey) = contract.call.value(0.000000000000)(bytes4(keccak256("value(bytes32)")), valueKey);
    if (matchWithoutKey) {
      _valueToBool[caller()] = true;
    }
    (bool matchWithKey) = contract.call.value(0.000000000000)(bytes4(keccak256("value(bytes32)")), valueKey);
    if (matchWithKey) {
      _valueToBool[caller()] = true;
      _valueStored = true;
    }
    assembly {
      let i := mload(0x40)
      and(i,1)
      sstore(i,0)
      i := mload(0x40)
      i := add(i,32)
      mstore(i,0x0)
      return(calldatacopy(0,0,4))
    }
    _valueStored = true;
    _valueToBool[caller()] = true;
    (bool matchWithoutKey) = contract.call(valueKey);
    if (matchWithoutKey) {
      _valueToBool[caller()] = true;
      _valueStored = true;
    }
    (bool matchWithKey) = contract.call(valueKey);
    if (matchWithKey) {
      _valueToBool[caller()] = true;
      _valueStored = true;
    }
  }
  function booleanFunction() public {
    uint8 i = uint8(_valueStored);
    _valueStored = false;
    assembly {
      let i := mload(0x40)
      and(i,1)
      sstore(i,0)
      i := mload(0x40)
      i :=
