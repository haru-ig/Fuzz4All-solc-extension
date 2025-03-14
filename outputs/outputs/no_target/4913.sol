pragma solidity ^0.8.0;
contract B3 { function g() public pure { unchecked { assert (uint256(0xfffffffffffffffffffffff) + 1 <= uint256(0xfffffffffffffff)); } unchecked { assert (uint256(0xfffffffffffffffc) == 65535); } } }
