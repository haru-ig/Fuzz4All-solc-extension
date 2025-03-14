pragma solidity ^0.8.0;
contract B2 { function f() public pure { assert (0xfffffffffffffff < 0xfffffffffffffffffffffff); } }
contract B3 { function f() public pure { assert (0xfffffffffffffff < 0xfffffffffffffffffffffffffffffff); } }
contract B4 { constructor () { assert (0xfffffffffffffffffffffff < 0xffffffffffffffffffffffffffffffffffffffffff); }}
contract B5 { constructor () { assert (0xfffffffffffffffffffffff < 0xfffffffffffffffffffffffffffffff); }}
contract B1 { function f() public pure { assert (0xfffffffffffffffffffffff < 0xfffffffffffffffffffffff); }}
