pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  uint[100] _storage;
  uint[10] _value = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  function foo(uint x, uint y) public pure {
    assembly { revert(0, mem(x, 0, 0x6000)) }
  }
  function boo() public pure {
    assembly { revert(0, mload(_storage)) }
  }
  function goo(uint val) public pure {
    assembly { revert(0, pop(_value, val)) }
  }
  function bar() public pure {
    assembly { revert(0, mstore(_storage, val)) }
  }
}
