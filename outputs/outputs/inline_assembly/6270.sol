pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample15 {
  struct MixedContacts {
      uint256 y;
      uint256 z;
  }
  bytes32 public x;
  MixedContacts public s;
  function main()
  public pure returns (MixedContacts memory){
    s := MixedContacts({y:10, z:20});
    assembly {
      s := s
    }
    return s;
  }
}
