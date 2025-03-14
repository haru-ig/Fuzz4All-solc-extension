pragma solidity ^0.8.0;
contract Mutability {
  uint public value;

  function mutability(
    uint value) public immutable returns (uint) {
    this.value = value;
    return this.value;
  }
}
