pragma solidity ^0.8.0;
contract C2 { function g() public pure { unchecked { assert (4294967295 >= 20); } unchecked { assert (20 == 20); } } }
