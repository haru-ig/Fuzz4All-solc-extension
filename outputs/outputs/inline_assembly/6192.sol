pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint256 x;
      uint y;
  }
  function main(uint64 witness) public pure returns (uint) {
    MixedContacts memory x;
    Assembly { x.x := witness }
    x.x += x.y + 2/x.y;
    return(uint) (x.y + x.y + x.x + 2/x.y);
  }
}
Contract contract31{
    struct Simple {
        uint constant x = 0x200;
        uint constant y = 0x400;
    }
