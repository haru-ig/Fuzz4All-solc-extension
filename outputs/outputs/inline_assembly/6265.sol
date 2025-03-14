pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample13 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  function main(MixedContacts memory s)
  public pure returns (MixedContacts memory){
    assembly {
      s.x := 64
    }
    return s;
  }
}
