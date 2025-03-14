pragma solidity ^0.8.0;
contract SemanticallyEquivalentExample {
  struct SemanticallyEquivalent {
      uint256 x;
      uint y;
      uint32 _0;
      bytes x1;
      uint5 y1;
      bytes4 y2;
      uint256 _3;
      bytes3 y3;
      uint8 _4;
  }
  function main(bytes0[5] memory witness) public pure {
      SemanticallyEquivalent memory x1;
      x1.x=x1.x*witness[0];
      x1.y=x1.y*witness[1];
  }
}
