pragma solidity ^0.8.0;
interface ArrayMutatorMutator {
  function modifies(uint[] memory) external;
}

interface ArrayMutatorMutator {
  event Changed(uint i, uint newval);
  function modifies(uint[] memory) external view returns (uint[]);
}
