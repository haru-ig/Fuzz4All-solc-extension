pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint256 _x;
      uint _y;
      uint8 version;
  }
  function main(MixedContacts memory x, uint64 witness)
  public pure {
      uint64 w=x._x+witness;
      w=2*w;
      x._x=w;
      x._y=uint(x._y+1);
      x._y=x._y+1;
  }
}
