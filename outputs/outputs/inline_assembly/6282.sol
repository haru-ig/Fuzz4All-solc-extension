pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample15 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  uint256 private x = 12;
  function main(MixedContacts memory sc1, MixedContacts memory sc2)
    public pure returns (MixedContacts memory){
      return sc1;
  }
}
uint256[5];
uint256[5];
uint256[5];
function main(uint256[5] memory sc1, uint256[5] memory sc2)
  public pure returns (uint256[5] memory){
  return sc1;
}
