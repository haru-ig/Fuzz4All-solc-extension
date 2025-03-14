pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample3 {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(MixedContacts memory x, uint64 witness)
  public pure {
      x._x=x._x+witness; x._y++;

      x._y=x._y+1;
  }
}
