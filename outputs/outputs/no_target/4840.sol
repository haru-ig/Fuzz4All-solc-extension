pragma solidity ^0.8.0;
contract A { function g() public pure { B.f(); B.f(); } }
contract B { function f() public pure returns (uint8) { return 128; } }
contract C { function x() public pure { var c; assembly { c := 8 } } }
contract D { function x() public pure { var d; asm { d := 8 } } }
contract E { function f() public pure { D.x(); D.x(); A.g(); A.g(); } }
```
