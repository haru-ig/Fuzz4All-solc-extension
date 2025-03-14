pragma solidity ^0.8.0;
contract Compiled { function f() external { IToken tok; tok.testContract(); } }
function f2() public { Compiled t; t.f(); }
