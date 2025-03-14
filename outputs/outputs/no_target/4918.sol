pragma solidity ^0.8.0;
contract C3 { function g() public pure { unchecked { assert (20 == 4294967295 / 20); } unchecked { assert (20 == 20); } } }

pragma solidity ^0.8.0;
contract C4 { function f() public pure { unchecked { assert (false); } unchecked { assert (true); } } }
