pragma solidity ^0.8.0;
contract C { function f() public pure { unchecked { for (var x = 0; x < 10; x++) assert (x == x); } } }
