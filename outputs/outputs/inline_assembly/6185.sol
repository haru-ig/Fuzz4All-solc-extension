pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample2 {
  struct MixedContacts {
      uint256 y;
  }
  function main(uint64 witness) public pure returns (uint) {
    MixedContacts memory x;
    x.y=x.y+witness;
    x.y+=x.y+witness;
    return (uint) (witness+2/x.y);
  }
}
