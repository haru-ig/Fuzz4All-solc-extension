pragma solidity ^0.8.0;
contract B1 { function g() public pure { unchecked { assert (0xfffffffffffffffffffffff < 0xfffffffffffffffffffffff + 1); } } }
