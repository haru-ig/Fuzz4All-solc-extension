pragma solidity ^0.8.0;
 struct A { uint256 a; }
contract B { A a; }
struct C { uint256 c; }
contract D { A a; B b; }
contract E { int256 b; B b; }
contract F { C c; D d; E e; A a; B b; }

pragma solidity ^0.8.0; { A a; }
{ A a; B b; }
{ A a; D d; B b; }
{ A a; B b; E e; }
{ A a; C c; D d; }
{ A a; C c; B b; E e; }
