pragma solidity ^0.8.0;
library B { function f() public { require(uint(uint160(-1)) == uint160(-1)); } }
