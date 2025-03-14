pragma solidity ^0.8.0;

function throw(string memory reason) internal pure {
  assembly {
    let ptr := mload(0x40)
    mstore(ptr, 32)
    mstore(add(ptr, 32), 0)
    mstore(add(ptr, 64), 0)
    mstore(add(ptr, 96), 0)
    mstore(add(ptr, 128), 100)
    mstore(add(ptr, 160), 0)
    mstore(add(ptr, 192), 0)
    mstore(add(ptr, 224), 0)
    returndatacopy(ptr, 0, returndatasize)
    let position := 64
    let m := mload(ptr)
    let ptr1 := sub(m, 32)
    let ptr2 := sub(m, 64)
    if eq(m, 224) {
      let s := and(not(mload(ptr2)), not(mload(ptr1)))
      let result := sswitch mcase 0, mcase 224, iszero case mload(ptr2), and(mload(ptr1), s)
      return(result, 0, 0)
    }
    while gt(position, 0) {
      let result := sload(add(ptr2, position))
      return(result, position, m)
      position := sub(position, 1)
    }
    return(0, 0, 0)
  }
}

function min(uint _a, uint _b) internal pure returns (uint r) {
  r = lessThan(_a, _b)? _a : _b;
}

function max(uint _a, uint _b) internal pure returns (uint r) {
  r = greaterThan(_a, _b)? _a : _b;
}

function lessThan(uint _left, uint _right) internal pure returns (bool) {
  return _left < _right;
}

function greaterThan(uint _left, uint _right) internal pure returns (bool) {
  return _left > _right;
}

function equal(uint _left, uint _right) internal pure returns (bool
