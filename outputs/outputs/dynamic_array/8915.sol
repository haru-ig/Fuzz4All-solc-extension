pragma solidity ^0.8.0;
contract SemanticEquivalentSolidityPointers {
  uint[] SIMPLEREPRICEDPOINTS;
  Point[] SIMPLEREPRICEDLINES;
  address[] SIMPLEREPRICEDADDRESSES;
  uint[][] SIMPLEREPRICKEDPOINTSTYPES;
  Point[][] SIMPLEREPRICKEDLINESTYPES;
  Line[][] mutatedArrayofPoints;
  uint[][] mutatedArrayofLines;
  constructor function() payable {
    uint count = 3333333333;
    for (uint i = 1; i <= count; i++) {
      SIMPLEREPRICEDPOINTS.push(i.add(i+1000000000));
      SIMPLEREPRICEDLINES.push(Point(0x12C4c3214321,0));
    }
    SIMPLEREPRICEDADDRESSES.push(0xd053dc63043d6745043012343012350d053dc63043d6745043012343012350d053dc63043d6745043012343012350d053dc63043d6745043012343012350);
    uint sizePoints = count;
    uint sizeLines = 1;
    uint[][] memory tempLines;
    Point[][] memory tempPoints;
    tempPoints = new Point[sizeLines][sizePoints];
    for (uint i = 1; i <= sizeLines; i++) {
      tempLines[i] = new Point[sizePoints];
      for (uint j = 1; j <= sizePoints; j++) {
        tempLines[i][j] = Point(0x12C4c3214321,0);
      }
    }
    tempLines[0][0] = tempLines[0][1];
    mutatedArrayofPoints = tempPoints;
    mutatedArrayofLines = tempLines;
