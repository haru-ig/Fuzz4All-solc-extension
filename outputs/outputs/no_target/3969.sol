pragma solidity ^0.8.0;
contract B { function A() public { C a; } } interface A{} interface E { function A() public; }
address D() public { A a; A e; }
contract C { function C(A a) public { B b; B c; B d; } }
interface A { function A() public { E c; } } interface B { function A() public; } interface C { function A() public; }
contract E{}
