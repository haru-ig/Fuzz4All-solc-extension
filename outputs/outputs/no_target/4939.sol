pragma solidity ^0.8.0;
contract C { function f(address) public pure { require (4294967295 > 20); unchecked { } } }
contract D { function f(address) public pure { require (4294967295 <= 20); unchecked { } } }
contract E { function f(address a) public pure { require (true); unchecked { } } }
