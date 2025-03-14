pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(uint64 witness) public pure returns (uint) {
    MixedContacts memory x;
    x._x=witness;
    x._y += x._y / x._x;
    return (uint) (x._y + x._y + 3 / x._y);
  }
}
