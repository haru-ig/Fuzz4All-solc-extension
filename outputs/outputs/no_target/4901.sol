pragma solidity ^0.8.0;
contract B2 { function g() public pure { unchecked { assert (0xfffffffffffffffffffffff < 0xfffffffffffffffffffffff - 1); } } }
