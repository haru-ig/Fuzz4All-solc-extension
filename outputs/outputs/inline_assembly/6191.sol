pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample{
  struct MixedContacts {
      uint256 x;
      uint y;
  }
  function main(uint64 witness) public pure returns (uint) {
    MixedContacts memory x;
    x.x = 1;
    x.y = witness;
    x.x = (1 << 256) + _increment(x.x, 4) + x.y;
    return witness + x.x;
  }
  function _increment(uint a, uint b) private pure returns (uint) {
    return a + b;
  }
}
