pragma solidity ^0.8.0;
contract MutatingFallback4 {
  function modify(bytes memory bytes1) public {
    require(keccak256(bytes1) == keccak256("123"), "modify() called");
  }
}
contract CreateAddress4 {
  function createAddress() public pure { }
}
