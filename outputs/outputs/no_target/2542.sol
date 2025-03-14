pragma solidity ^0.8.0;
interface I {     function f1(uint x) public;   uint x; }
contract M {     function () public { f1(1); }     function () public { x = 1; f1((x+1)); } }
contract D {     function () public { f(); } }
contract C {     function () public pure {} }
contract F {     function () public { C a; f(a); }     function () public { C b; f(b); } }
contract G {     function () public view {} }
contract E {     function () public view {} }
contract A1 {     uint x;     uint y;     function () public { A a; f(a); } }
contract A0 {     uint x;     uint y;     function () public { E a; f(a); } }
contract A {     uint x;     uint y;     function () public pure { x
