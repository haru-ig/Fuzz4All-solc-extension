pragma solidity ^0.8.0;
contract Main {
    uint8[][] subarr;
    uint8[] public nonInline1;
    uint8[] public nonInline2;
    uint8 public internal1;
    uint8 public internal2;
    uint8 public nonPublic;
    uint8[][] internal inline1;
    uint8[][] internal inline2;
    uint8[] public nonInlinePublic1;
    uint8[] public nonInlinePublic2;
    modifier nonInlineModifier(uint i, uint j) {
      nonInline1[i] = i + 1;
      nonInline2[i] = j + 2;
      internal1 = i + 3;
      internal2 = j + 4;
      nonPublic = i + 5;
      inline1[i][j] = i * j + 6;
      inline2[i][j] = 10 * i * j + 7;
      nonInlinePublic1[i] = i + 11;
      nonInlinePublic2[i] = j + 12;
      _;
    }
}
