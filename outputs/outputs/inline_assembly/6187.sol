pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint256 x;
      uint y;
  }
  function main(uint64 witness) public pure returns (uint) {
    MixedContacts memory x;
    x.y=x.x;
    x.x:=witness+1;
    return (uint) (x.x);
  }
}
