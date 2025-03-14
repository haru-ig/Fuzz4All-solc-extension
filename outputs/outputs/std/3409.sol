pragma solidity ^0.8.0;
interface ArrayMutator {
  function check(uint val, uint arrayIndex) readonly external;
  function replace(uint value) external;
  function checkReplace(uint val) readonly external;
}
