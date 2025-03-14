pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample3 {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(uint64 witness) public pure {
      MixedContacts memory x;
      x._x=witness;
      x._y=0;
      x._y-=1;
      x._y*=2;
      x._x = 1;
  }
}
