pragma solidity ^0.8.0;
contract C { function f(address, uint) public pure { require (4294967295 > 20); unchecked { } } }
contract D { function f(address, uint) public pure { require (4294967295 <= 20); unchecked { } } }
contract E { function f(address a, uint) public pure { require (true); unchecked { } } }
