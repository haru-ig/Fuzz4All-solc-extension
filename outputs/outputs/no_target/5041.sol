pragma solidity ^0.8.0;
contract C38_bug40493397 {
  uint87 a;
  function set() public { a = a >> 1; }
}
