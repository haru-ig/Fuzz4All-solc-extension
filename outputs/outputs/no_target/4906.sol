pragma solidity ^0.8.0;
contract B2 { function g() public pure { assert (0xfffffffffffffffffffffff < 0xfffffffffffffffffffffff + 1); } contract B3 { function g() public pure { assert (0xfffffffffffffffc == 65535); } } }
