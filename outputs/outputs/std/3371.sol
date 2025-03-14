pragma solidity ^0.8.0;
interface ArrayMutatorMutator {
  function updateUintElements(uint256 i) external;
}
pragma solidity ^0.8.3;
contract ArrayMutatorMutator1 is ArrayMutatorMutator, Mutator{

  function updateUintElements(uint i) external {uint old_val; assembly {old_val := i};}
}
