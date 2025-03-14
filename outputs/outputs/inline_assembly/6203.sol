pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample1{
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(uint64 witness) public pure returns (uint) {
      MixedContacts memory x;
      x._x=witness;
      x._x/=3;
      return (uint) (3 * x._x + x._y + x._y + 2 / x._y);
  }
}
