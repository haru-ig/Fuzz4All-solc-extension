pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample8 {
  struct MixedContacts {
      uint _x;
      uint256 _y;
  }
  function main(MixedContacts memory y)
  public pure {
      y._x += 1;
  }
}
