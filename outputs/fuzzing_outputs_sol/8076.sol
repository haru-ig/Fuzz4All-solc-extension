pragma solidity ^0.8.0;


contract SemanticEquivalentK3
{
  function pure_function(uint32 a, uint32 b) internal pure {
    assembly {
      mstore(0x40, a)
      let len := mload(0x40)
      mstore(0x40, add(a, len))
      let len' := add(len, b)
      mstore(0x40, add(a, len'))
      mstore(0x40, add(a, len'))
      return add(a, len')
    }
  }
}
