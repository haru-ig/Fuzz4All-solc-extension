pragma solidity ^0.8.0;
interface ArrayMutatorMutatorMutatorMutatorMutator {
  function push(uint value) onlyAdmin external;
  function pushMultiple(uint value) onlyAdmin external;
  function popValue() onlyAdmin external;
  function popValueMultiple(uint multiple) onlyAdmin external;
  function deleteArray(uint index) onlyAdmin external;
}
