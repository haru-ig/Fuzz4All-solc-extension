pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample4 {
  function main(MixedContacts memory x, uint64 witness)
  public virtual pure {
    x._x=witness+x._x; x._y++;
    x._y++;
  }
}
