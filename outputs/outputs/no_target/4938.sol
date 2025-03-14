pragma solidity ^0.8.0;
contract C { function f() public pure { require (4294967295 < 20); unchecked { foo; } } function foo { unchecked { } } }
contract D { function f() public pure { require (4294967295 >= 20); unchecked { foo; } } function foo { unchecked { } } }
contract E { function f(address) public pure { require (4294967295 < 20); unchecked { foo; } } function foo { unchecked { } } }
