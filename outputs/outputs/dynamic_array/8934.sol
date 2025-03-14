pragma solidity ^0.8.0;
struct Point { address x; address y; }
struct Line { address a; address b; }
contract SemanticEquivalentSolidityPointers2 {
  uint[] simpleRepricedPoints;
  Point[] simpleRepricedPoints2;
  address[] simpleRepricedAddresses;
  uint[1][] repricedPointsTypes;
  Point[1][] simpleRepricedPoints3;
  Point[1][] repricedAddresses;
   uint[1][1][] repricedLineTypes;
   Line[1][] simpleRepricedLines3;
   Line[1][] repricedAddresses3;
}
