pragma solidity ^0.8.0;
contract C2 { function f(uint8) public pure { unchecked { require (981 == 5555); } unchecked { assert (4294967295 >= 20); } } }
