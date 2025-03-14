pragma solidity ^0.8.0;
contract Equivalent_contract_2 {
  uint constant constant1 = 10;
  uint constant constant2 = 11;
  uint constant constant3 = 12;
  uint constant constant4 = 13;
  uint8 variable8;
  uint16 variable16;
  uint32 variable32;
  uint56 variable56;
  uint112 variable112;
  uint variable4;
  uint variable5;
  bytes32 variableBytes32;
  address variableAddress;
  function variableBytesReference()
  {
      return bytes32(variableBytes32);
  }
  fallback() public payable {
      variable8 = 14;
      memorystore40(uint_to_bytes32(41), constant3);
      memorystore56(uint_to_bytes32(42), constant1);

  }
}
contract Memory_operations {


  constructor () {}











  }
  function memorystore56(bytes32 _mem, uint32 _value) public pure
  {
      assembly {
          mstore(add(_mem, 4), add(20, _value))
      }
  }
  function memorystore40(bytes32 _mem, uint32 _value) public pure
  {
      assembly {
          mstore(add(_mem, 0x20), bswap32(_value))
      }
  }
  function bytes32Variable_to_bytes32(bytes32 _b) public pure
    returns(bytes memory)
  {
      bytes memory _bytes = bytes(_b);
      assembly {
          mstore(0xb4, add(0x40, add(0xb4, gt(add(0x04, _bytes), 0xb4)), 0x20)))
      }
      return _b;
  }
  function uint_to_bytes32(uint _n) public
