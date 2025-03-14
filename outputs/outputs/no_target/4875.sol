pragma solidity ^0.8.0;
contract A { function f() public pure { B storage sb; sb.f(); } }
