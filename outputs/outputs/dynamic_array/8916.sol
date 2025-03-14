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

pragma solidity ^0.8.0;
contract SemanticEquivalentSolidityPointersContract {
  struct Line {address a; address b;}
  struct Point {address x; address y;}
  uint[] SIMPLEREPRICEDPOINTS;
  Point[] SIMPLEREPRICEDLINES;
  address[] SIMPLEREPRICEDADDRESSES;
  uint[][] SIMPLEREPRICKEDEFFECTIVETOPOLOGICALLINES;

  uint[][] SIMPLEREPRICKEDPOINTSTYPES;
  Point[][] SIMPLEREPRICKEDLINESTYPES;
  Line[][] mutatedArrayofPoints;
  uint[][] mutatedArrayofLines;

  constructor() public {
    createArrays();
  }

  function createArrays() public {
    createSimpleEquivalent(points);
    SIMPLEREPRICEDPOINTS.push(1);
  }
  function createSimpleEquivalent(SolidityArrays pInts) public {
    SIMPLEREPRICEDPOINTS = pInts.value;
    SIMPLEREPRICKEDPOINTSTYPES.push(new uint[](6));
    SIMPLEREPRICKEDPOINTSTYPES[0] = new uint[](6);
    SIMPLEREPRICKEDPOINTSTYPES[0][0] = 3;
    SIMPLEREPRICEDLINES = createComplexEquivalent(lines);
    SIMPLEREPRICKEDLINESTYPES.push(new uint[](4
