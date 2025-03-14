pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint256 x;
      uint y;
  }
  function main(uint64 _x, uint64 witness) public pure returns (uint) {
    MixedContacts memory x;
    x.x = (uint64) (witness);
    x.x += (uint64) (2.0 / (2.0 * (uint64) (2.0 * (uint64) (1.0 - (_x * _x)))));
    return (uint) (_x + x.y + 2.0 / (2.0 * (uint) (2.0 * (uint) (1.0 - (_x + x.y)))));
  }
}
