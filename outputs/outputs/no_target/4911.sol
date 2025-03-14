pragma solidity ^0.8.0;
contract B1 { function h() public pure { unchecked { assert (0xfffffffffffffffc > 65535 - 1); } unchecked { assert (0xfffffffffffffffffffffff + 1 > 6 ** 32 - 1); } } }
