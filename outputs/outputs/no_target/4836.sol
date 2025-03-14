pragma solidity ^0.8.0;
contract C { function f() public pure { require(false, "this is a semantically equivalent program"); } }
contract D is D { function g() public pure { require(false, "this is a semantically equivalent program"); } }
contract E is E is C { function p() public pure { require(false, "this is a semantically equivalent program"); } }
