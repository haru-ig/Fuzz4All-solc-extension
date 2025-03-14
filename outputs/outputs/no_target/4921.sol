pragma solidity ^0.8.0;
contract C2 { function f(uint) public pure { unchecked { require (981 == 5555); } unchecked { assert (4294967295 >= 20); } } contract C1 is C2 {} }

pragma solidity ^0.8.0;
contract C3 is C2 { function f(uint) public pure { unchecked { this; } unchecked { assert (4294967295 >= 20); } } }
