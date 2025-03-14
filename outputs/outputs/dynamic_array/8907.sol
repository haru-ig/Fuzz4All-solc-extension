pragma solidity ^0.8.0;
contract SemanticEquivalentSolidityPointers_Mutated {
  Point[] mutatedData;
  Point mutatedPoint;
  uint mutated_Index;

  function arrayInitTest(uint initialX, uint finalX) public {
    mutated_Index = 0;
    uint length = finalX - initialX + 1;
    uint i;
    for ( ; mutated_Index <= length - 1; mutated_Index = mutated_Index + 1) {
      mutatedData.push(Point(initialX + mutated_Index, initialX + mutated_Index * 2));
    }
  }
}
contract PastIncompatibleEthereum {
  address[] p21;
  uint s1;
  uint p20;
  uint s2;
  constructor () public {
   if(p21.length == 1) {
    s1=-1;
  }
  }
}
