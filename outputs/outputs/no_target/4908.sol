pragma solidity ^0.8.0;
contract B2 { function g() public pure { assert(16 > (uint160(1) * int(-1))); } }
