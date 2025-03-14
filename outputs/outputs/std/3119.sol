pragma solidity ^0.8.0;
interface Array {
  function f(int32[] memory x) public pure;
}
contract Mutate {
  function f(uint[] memory x) public pure {
    uint[] memory y = x;
  }
}
contract ArrayTest {
  Array a = Array(Convert());
  Mutate m = Mutate(Convert());
  uint[] memory a_;
  uint[] memory m_;
