pragma solidity ^0.8.0;
interface ArrayMutatorMutatorMutatorMutatorMutatorMutatorMutatorMutatorMutator {
  function arrayElementSize() pure external;
  function arrayElementBytesSize() pure external;
  function getElement(uint s, uint e) external view returns(uint elem);
  function setElement(uint s, uint e, uint value) external;
  function getElementBytes(uint s, uint e) external view returns(bytes32 res);
  function setElementBytes(uint s, uint e, bytes32 value) external;
  function elementHasValue(uint index, uint valueBytesSize) external view returns(bool);
}
