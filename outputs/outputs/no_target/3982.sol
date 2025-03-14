pragma solidity ^0.8.0;
 interface I {} struct E { I e; I f; } contract C { bool public b; E public c; bool f; uint256 h; bool g; }
pragma solidity 0.7.6;
 contract Test { function foo() public {} function bar() public {} modifier f() { assert(c); _; } function test() public f { assert(b); } }
