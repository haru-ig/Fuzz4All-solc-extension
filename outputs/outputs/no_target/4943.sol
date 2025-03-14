pragma solidity ^0.8.0;
contract C1 { function f(address) internal pure { require (4294967295 > 20); unchecked { } } }
contract D1 { function f(address) public pure { require (4294967295 <= 20); unchecked { } } }
contract E1 { function f(address) public pure { require (true); unchecked { } } }
