pragma solidity ^0.8.0;
interface ArrayMutatorMutatorMutatorMutatorMutatorMutator {
  function get(uint arrayIndex) external view returns (uint);
  function set(uint arrayIndex, uint v) external;
  function swap(uint arrayIndex1, uint arrayIndex2) external;
  function replace(uint[] memory array_copy, uint arrayIndex) external;
  function checkReplace(uint[] memory array_copy) external;
  function check(uint val, uint arrayIndex) external;
  function setReturn(uint[] memory value) pure external;
  function getReturn() pure external returns (uint[] memory value);
  function setReturnArrayAddress(uint[] memory value) pure external returns (uint[] memory value);
  function getReturnAddress() pure external returns (uint[] memory value);
  function setReturnArrayAddressReturn(uint[] memory value) pure external returns (uint[] memory value, uint arrayIndex);
  function getReturnAddressReturn(uint i) pure external returns (uint[] memory value, uint arrayIndex);
}
