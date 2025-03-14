pragma solidity ^0.8.0;
struct Point {address p; address q;}
struct Line {address p1; address p2;}
contract SemanticEquivalentSolidityPointers3 {
  struct Address {address addr0; uint aSize1;}
  Address[] storage test;
  uint[] storage test2;
  struct Struct {address addr0; uint addr1; uint addr2; uint addr3;}
  uint[] public test;
  address[] public test2;
}
