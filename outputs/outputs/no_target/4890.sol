pragma solidity ^0.8.0;
contract B2 { function f() public pure { assert (0xffffffff < 0xffffffff); } }
contract B3 { function f() public pure { assert (0xffffffff < 0xfffffffffffffffffff); } }
contract B4 { constructor () { assert (0xffffffffffffffff < 0xfffffffffffffffffff); }}

contract B5 { constructor () { assert (0xffffffffffffffff < 0xfffffffffffffffffffffffffff); }}
contract B1 { function f() public pure { assert (0xfffffffffffffffffffffff < 0xffffffffffffffffffffff); }}
