pragma solidity ^0.8.0;
contract B3 { function g() public pure { unchecked { assert (0xfffffffffffffffffffffff < 0xfffffffffffffff + 1); } unsafe { assert (0xfffffffffffffffc == 65535); } } }
