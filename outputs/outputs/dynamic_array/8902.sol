pragma solidity ^0.8.0;
struct Point {address x; address y;}
struct Line {address a; address b;}
contract SemanticEquivalentSolidityPointers {
  uint[] SIMPLEREPRICEDPOINTS;
  Point[] SIMPLEREPRICEDLINES;
  address[] SIMPLEREPRICEDADDRESSES;
  uint[][] SIMPLEREPRICKEDPOINTSTYPES;
  Point[][] SIMPLEREPRICKEDLINESTYPES;
  Line[][] mutatedArrayofPoints;
  uint[][] mutatedArrayofLines;
}
