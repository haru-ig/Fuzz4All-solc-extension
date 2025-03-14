pragma solidity ^0.8.0;
contract C { function foo() public returns (uint160) {return uint160(address(B.foo()));} }
