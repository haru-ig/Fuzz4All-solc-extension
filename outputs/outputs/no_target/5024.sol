pragma solidity ^0.8.0;
contract A {
  function A() {}
}

contract B { function B(A c) {} function A() {} }
