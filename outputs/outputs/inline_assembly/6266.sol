pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample14 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  function main(MixedContacts memory s)
  public pure returns (MixedContacts memory){
    assembly {
      s := s, x
        }
    s.y = 0;
    return s;
  }
}
