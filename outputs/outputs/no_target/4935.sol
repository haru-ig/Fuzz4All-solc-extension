pragma solidity ^0.8.0;
contract C { function f(uint) public pure { require (4294967295 < 20); unchecked { } } }
contract D { function f(uint) public pure { require (4294967295 >= 20); unchecked { } } }
contract E { function f(address, uint) public pure { require (4294967295 < 20); unchecked { } } }
