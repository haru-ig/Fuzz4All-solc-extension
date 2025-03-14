pragma solidity ^0.8.0;
contract S2 is S1 { using(S1) ; function f() public { x = x / 12345678901234567890; } }
