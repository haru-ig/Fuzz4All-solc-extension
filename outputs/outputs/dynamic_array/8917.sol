pragma solidity ^0.8.0;
struct Point {address x; address y;}
struct Line {address a; address b;}
contract SemanticEquivalentSolidityPointers {
  uint[] points3;
  Point[] lines1;
  address[] addresses3;

  uint[][] pointstypes1;
  Point[][] linestypes1;
  Line[][] mutatedArrayofPoints;
}
