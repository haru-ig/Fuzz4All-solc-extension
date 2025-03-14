pragma solidity ^0.8.0;
contract Mutate {
  int32[] a;
  uint256 rand;
  function mutationfunc() public {
    a.push(rand);
  }
}
