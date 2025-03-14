pragma solidity ^0.8.0;
contract SemanticallyEquivalentExample {
  struct SemanticallyEquivalent {
      uint256 x;
      uint y;
      uint32 _0;
      bytes x1;
      bytes2 _1;
      bytes4 _2;
  }
  function main(uint256 witness) public pure {
      SemanticallyEquivalent memory x;
      x.x=x.x*witness;
  }
}
