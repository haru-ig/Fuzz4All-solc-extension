pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample14 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  function main()
  public pure returns (MixedContacts memory){
    assembly {
      let s := mload(0x40)
      s := s
      s := s
      s := s
      s := s
      s := s
      s := s
      s := s
      s := s
      s := s
    }
    return MixedContacts(s.x, s.y);
  }
}
