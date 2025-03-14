pragma solidity ^0.8.0;
contract D { function f() pure public {} } contract C { function g() pure public {} }

pragma solidity ^0.8.0;
struct D { } contract C { function g() pure public returns (D d, uint256 b) { return (1, 2); } }
