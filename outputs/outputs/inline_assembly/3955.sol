pragma solidity ^0.8.0;
contract SemanticallyEquivalent31 {

  struct Person { uint32 hire_date; uint8 age; }
  uint8 constant x = 0;
  uint8 constant y = 0;
  function foo(Person memory, Person memory) public pure {
    assembly { revert("bar", add(mload(0), ror(add(mload(0), mload(0)))) ) }
  }
}
