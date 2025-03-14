pragma solidity ^0.8.0;
import './EquivalentCompilation.sol';
contract MutatedCompilation
{
  EquivalentCompilation e;
  bool mutate = true;
  function revertFromConstructor(uint i) public {
    if (i == 0) {
      e.execute();
    }
    if (mutate) {
      e.mutate();
    }
    e.revertFromConstructor(i + 1);
  }
  constructor() public {
  }
}

pragma solidity 0.8.0;
contract Virtualization
{
  bytes32 x;
  constructor() public {
    x = '108';
    x = '109';
    x = '100';
  }
  function returnsX() public pure returns (bytes32) {
    return x;
  }
}

library Strings {
  function fromString(string memory _str) internal pure returns (bytes memory) {
    bytes memory _bytes = new bytes(_str.length);
    for (uint i = 0; i <= _str.length; i++) {
      _bytes[i] = bytes1(_str[i]);
    }
    return _bytes;
  }

  function fromUint(uint _val) internal pure returns (bytes memory) {
    bytes memory _bytes = new bytes(32);
    _bytes[0] = bytes1((_val & 255)     ) ;
    _bytes[1] = bytes1(((_val >> 8)   ) & 255) ;
    _bytes[2] = bytes1(((_val >> 16)   ) & 255) ;
    _bytes[3] = bytes1(((_val >> 24)   ) & 255) ;
    return _bytes;
  }

  function toUint(bytes memory _bytes) internal pure returns (uint) {
    uint _value  = 0;
    uint _nibbles = (_bytes.length == 32)? 4 : 3 ;
    for (uint x = _nibbles-1; x >= 0; x--) {
      _value |= (uint(uint8(_bytes[x]))     ) << (x
