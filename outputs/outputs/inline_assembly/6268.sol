pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample14 {
  struct MixedContacts {
      uint256 y;
      uint256 z;
  }
  function main(MixedContacts memory s)
  public pure returns (MixedContacts memory){
    assembly {
      s := s
    }
    return s;
  }
}
