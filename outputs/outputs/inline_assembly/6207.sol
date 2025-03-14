pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample2{
  struct MixedContacts {
      uint _x;
      uint _y;
  }

  function main(uint64 witness) public pure returns (uint) {
      MixedContacts memory x;
      x._x/=3;
      x._x*=3;
      return (uint) (3 * x._x + x._y + 4 / x._y);
  }
}
