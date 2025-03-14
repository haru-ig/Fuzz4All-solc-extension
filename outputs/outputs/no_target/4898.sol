pragma solidity ^0.8.0;
contract C2 { function f() public pure { assert (!(0xfffffffffffffffffff < 0xfffffffffffffffffff)); } }
contract C3 { function f() public pure { assert (!(0xfffffffffffffffffff < 0xfffffffffffffffffffffffffff)); } }
contract C4 { constructor () { assert (!(0xfffffffffffffffffff < 0xfffffffffffffffffffffffffffffffffff)); }}
contract C5 { constructor () { assert (!(0xfffffffffffffffffff < 0xffffffffffffffffffffffffff)); }}
contract C1 { function f() public pure { assert (!(0xfffffffffffffffffffffff < 0xffffffffffffffffffffffffffffff)); }}
contract C6 { f() public pure {} }
contract C7 { function f() public pure {} }
