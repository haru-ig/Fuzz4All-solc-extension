pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample12 {
  struct MixedContacts {
      uint256 xy;
  }
  function main(MixedContacts memory s)
  public pure returns (MixedContacts memory){
    s = s;
    return s;
  }
}
