pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample17 {
  struct MixedContacts {
      uint256 _x;
      uint256 y;
  }
  function main(MixedContacts memory s)
  public pure
  {
    MixedContacts memory s1;
    s1.x;
    s.y;
  }
}
