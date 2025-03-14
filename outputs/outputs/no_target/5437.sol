pragma solidity ^0.8.0;
contract C { function f1() public { var __result = f(); __assert(__result == -1337); }
function f() public pure {} }
