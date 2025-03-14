pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample15 {
  struct MixedContacts {
      uint256 y;
      uint256 z;
  }
  uint256 private z = 12;
  function main(MixedContacts memory ss)
  public pure returns (MixedContacts memory){
    assembly {
      ss := ss
    }
    return ss;
  }
}
