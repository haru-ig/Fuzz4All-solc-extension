pragma solidity ^0.8.0;
struct Point2 {address x; address y;}
struct Line2 {address a; address b;}
contract SemanticEquivalentMutableSolidityPointers {
  uint[] SIMPLEREPRICEDPOINTS;
  Point[] SIMPLEREPRICEDLINES;
  address[] SIMPLEREPRICEDADDRESSES;
  uint[][] SIMPLEREPRICKEDPOINTSTYPES;
  Point[][] SIMPLEREPRICKEDLINESTYPES;
  Line[][] mutatedArrayofPoints;
  uint[][] mutatedArrayofLines;
}
