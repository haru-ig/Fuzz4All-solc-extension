pragma solidity ^0.8.0;
struct PointMutated {address x; address y;}
struct LineMutated {address a; address b;}
contract SemanticEquivalentSolidityPointersMutating {
  uint[] SIMPLEREPRICEDPOINTS;
  Point[1][] SIMPLEREPRICEDLINES;
  address[] SIMPLEREPRICEDADDRESSES;
  uint[][] SIMPLEREPRICKEDPOINTSTYPES;
  PointMutated[] SIMPLEREPRICKEDLINESTYPES;

  address x;
  address y;
  struct LineOfInterest {address start;address end;}
  LineOfInterest xtoy;
  LineOfInterest xtoy2;
  uint i;

  struct Duplication {address start;address end; int data}
  uint n;
  Duplication[] arrOfDups;
  uint numToReplaceXWith;
  uint numToReplaceYWith;
  uint numToReplaceXWith2;
  uint numToReplaceYWith2;

  array[2,2] uint2x2;
  mapping(bytes memory => uint8) public arr3WithByteMapping;
  mapping(bytes[] => uint8) public arr3WithByteArrayMapping;
  mapping(bytes1[] => uint8) public arr3WithByteArray1Mapping;
  mapping(bytes4 => uint8) public uint16ArrayMapping;
  mapping(bytes5 => uint8) public bytes4ArrayMapping;
  mapping(bytes7 => uint8) public bytes7ArrayMapping;
  mapping(bytes10 => uint8) public bytes10ArrayMapping;
  mapping(bytes12 => uint8) public bytes12ArrayMapping;
  mapping(bytes15 => uint8) public bytes15ArrayMapping;
  mapping(bytes20 => uint8) public bytes20ArrayMapping;

  mapping(uint => struct Duplication) public arrOfDups2;
  mapping(uint => uint) public arrOfDupsIndexes;
  mapping(uint => uint256) public arrOfDups2Indexes;

  uint[] arrayData;
  uint256[] array2Data;

  bool isTrue;
  mapping(uint => uint) public iArray;
}
