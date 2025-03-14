pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample13 {
  struct MixedContacts {
      uint256 x;
  }
  function main(MixedContacts memory s)
  public pure returns (MixedContacts memory){
    s.x = 18;
    return s;
  }
}
