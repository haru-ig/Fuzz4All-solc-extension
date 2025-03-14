pragma solidity ^0.8.0;
contract B2 { function g() public pure { unchecked { (0xfffffffffffffffffffffff < 0xfffffffffffffffffffffff + 1)? (assert(0xfffffffffffffffffffffff < 0xfffffffffffffffffffffff + 1)):(assert(0xfffffffffffffffc == 65535)); } } }
contract B3 { function g() public pure { unchecked { 65535? (assert(0xfffffffffffffffffffffff < 0xfffffffffffffffffffffff + 1)):(assert(0xfffffffffffffffc == 65535)); } } }
contract C { function f1() public pure { unchecked { g(); } } }

contract D { function f2() public pure { unchecked { f1(); } } }
