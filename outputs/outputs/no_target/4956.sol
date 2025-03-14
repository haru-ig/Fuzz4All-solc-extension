pragma solidity ^0.8.0;
contract C { uint constant a = 2; function f() public pure returns (uint256) {return a;} }
contract D { uint constant a = 2; function f() public pure returns (contract B) {return new B();} }
