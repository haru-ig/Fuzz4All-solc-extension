pragma solidity ^0.8.0;
contract A { function f() public {
    A a;
    a.a = a<>;
    a.f = a.A::f;
    a.A::f = a.A::f;
} }
