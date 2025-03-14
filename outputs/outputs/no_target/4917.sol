pragma solidity ^0.8.0;
contract C { function f() public internal { unchecked { assert (0 >= 20); } unchecked { assert (0 == 0); } } }
contract C2 { function f() public internal { unchecked { assert (20 >= 4294967295); } unchecked { assert (4294967295 == 4294967295); } } }
