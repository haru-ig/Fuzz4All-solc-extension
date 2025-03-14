pragma solidity ^0.8.0;
contract B { function f() public pure { require (--0xffffffff < --0x7ffffffe); } }
