pragma solidity ^0.8.0;
contract P19 {
  struct A {uint256 a;};
  uint256 b(A storage x);
  uint256 b(uint a);
}
