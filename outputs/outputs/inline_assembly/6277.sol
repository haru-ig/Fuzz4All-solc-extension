pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample15 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
      uint256 z;
  }
  uint256 private z = 12;
  MixedContacts storage ss = MixedContacts(1, 2, 2);
  function main(MixedContacts memory b) public pure returns (MixedContacts memory){
    b = ss;
    asm {



    }
    return b;
  }
}
