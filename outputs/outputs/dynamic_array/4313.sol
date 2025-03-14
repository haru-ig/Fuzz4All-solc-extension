pragma solidity ^0.8.0;
contract A is B { A a; }
contract B {}
pragma solidity ^0.8.0;
contract A { function f() public pure returns (uint) { return a.f(); } }
