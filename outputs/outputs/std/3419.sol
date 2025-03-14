pragma solidity ^0.8.0;
interface ArrayMutatorMutatorMutatorMutatorMutatorMutatorMutatorMutatorMutatorMutatorMutator {
  function arraySize() pure external;
  function arrayLength(uint elemSize, uint initValSize) external returns(uint);
  function arraySet(uint index, uint index2, uint elemSize, uint valSize, uint initValue) external;
  function arrayPush(uint elemSize, uint valSize, uint initValue) external;
  function arrayPop(uint elemSize, uint valSize) external returns(uint);
  function arraySwap(uint arrayIndex) external;
  function arrayCopy(uint src, uint srcIndex, uint srcEnd, uint dst, uint dstIndex, uint dstEnd) external;
  function arrayFindMin(uint elemSize) external returns(uint);
  function arrayFindMax(uint elemSize) external returns(uint);
  function arraySum(uint elemSize) external returns(uint);
  function arraySort(uint elemSize) external;
  function arrayShiftLeft() external;
  function arrayShiftRight() external;
  function arrayConcatenate(uint elemSize, uint valSize) external returns(uint, uint);
  function arrayShuffle() external;
}
