pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts memory c;
  function main(uint64 witness) public pure returns (uint) {
    c.x=witness;
    c.y+=c.y/c.x;
    return uint(c.y+c.y+1/c.y);
  }
}
