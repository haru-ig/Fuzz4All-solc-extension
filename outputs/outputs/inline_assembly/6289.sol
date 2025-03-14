pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample16 {
  struct MixedContacts {
      uint256 y;
      uint256 z;
  }
  function main(MixedContacts memory ss)
  public view returns (MixedContacts memory){
    return ss;
  }
}
