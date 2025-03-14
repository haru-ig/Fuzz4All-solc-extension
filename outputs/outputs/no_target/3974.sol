pragma solidity ^0.8.0;

contract C { constructor() public { B({ f : true }); } function B(bool f) public { a(f); } function a(bool x) public {} }


contract O { function b(bool d) public { C c = new C; c.b = d; c.a(1); c.b(2); c.c().c(); } function a(uint16 x) public { b(x>32); } }
