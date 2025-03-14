pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample7 {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  MixedContacts x;
  function main(MixedContacts memory y)
  public pure {
      y._x += 1;
  }
}
