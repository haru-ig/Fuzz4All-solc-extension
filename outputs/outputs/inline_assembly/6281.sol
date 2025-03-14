pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample15 {
  struct MixedContacts {
      uint256 y;
      uint256 z;
  }
  uint256 public z;
  function main(MixedContacts memory ss)
  public returns (MixedContacts memory){
    assembly {
      ss := ss
      z := mload(0x40)
      z := add(z,0x20)
      sstore(0x40, z)
    }
    return ss;
  }
}
