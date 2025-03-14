pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample4 {
  function main(uint64 witness) public pure {
      MixedContacts memory x;
      x._x=witness;
      x._y=45*witness+16;
  }
}
