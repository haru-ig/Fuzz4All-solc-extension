pragma solidity ^0.8.0;
 struct X { uint a; address b; bool c; }
contract A { X public x; function g() { x.a += 1; x.b = address(x.x.b); x.c = true; } } contract B { A a; uint256 b; A public a; function g() { b += 1; a = A(a.a.a); } }
function f()
    external
    (
        A a
    )
{
    B b;
    b = B(0);
    if (b.a.a.x.c) {
        b.a = A(0x678804A27A0000000000000000000000000000);
        b.b += 1;
    }
}
