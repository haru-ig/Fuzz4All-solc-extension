pragma solidity ^0.8.0;
contract MixedContractsExample {
  struct MixedContacts {
      uint256 x;
      uint y;
      uint32 _0;
      bytes x1;
  }
  function main(uint64 witness) public pure {
    MixedContacts memory x;
    x.x=x.x+witness;
  }
}
