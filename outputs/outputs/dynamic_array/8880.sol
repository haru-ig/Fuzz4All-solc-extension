pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentSolidityPointers2 {
   uint[][] mutatedArrayofNodesbe;
   uint[][] mutatedArrayofNodesb;

  function mutateArrayofNodesb(uint x, uint y) public returns (uint) {
    mutatedArrayofNodesbe[y] = mutatedArrayofNodesbe[x];
    return x+y;
  }
}
