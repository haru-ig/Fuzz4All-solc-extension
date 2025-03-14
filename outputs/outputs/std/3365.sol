pragma solidity ^0.8.0;
interface ArrayMutatorMutator {
  function updateIntElements(uint i) external;
}
pragma solidity ^0.8.0;
contract MemoryMutator is ArrayMutatorMutator, ArrayMutatorMutator {
  function updatePtrAndMemWith(uint i) public {
    int[] memory intElements = new int[](1);
    intElements[0] = i;
    uint intMem = intElements[0];
    ArrayMutatorMutator.set(intElements, 0, 1, 1);
  }
}
