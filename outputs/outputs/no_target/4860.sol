pragma solidity ^0.8.0;
library B { function f() public pure { require (0xffffffff > 0xffffffff); } }

pragma solidity ^0.8.0;
library A { event E(); function g() pure public { B.f(); } }
contract C { event E(int a); function f() public { A.E(); } }
contract D is A { constructor() { emit E(); } }
contract E { }
contract E2 { event E(address a); function f() public { emit E(1); } }
