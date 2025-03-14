pragma solidity ^0.8.0;
contract B3 { function h() public pure { unchecked { assert (0xfffffffffffffffffffffff < 0xfffffffffffffffc + 3); } unchecked { assert (0xfffffffffffffffc == 0xfffffffc); } } }
