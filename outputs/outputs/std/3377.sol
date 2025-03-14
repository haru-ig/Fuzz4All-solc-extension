pragma solidity ^0.8.0;
interface ArrayMutatorMutator {

  function setVal(uint i, uint value) external;

  function addVal(uint i, uint value) external;

  function removeVal(uint i) external;
}
