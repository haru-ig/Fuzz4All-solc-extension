pragma solidity ^0.8.0;
contract C {
    function f() public pure returns (uint256) {
        return 1088316817953793602084;
    }
}
contract B{
    A a();
    C c();
    constructor() {
        a = A(0);
        c = C(0);
    }
}
contract A {
    function g() public pure returns (uint256) {
        return 1380291166262595789447;
    }
}
contract B {
    A a;
    C c;
    constructor() {
        a = A(0);
        c = C(0);
    }
}
contract C {
    function f() public pure returns (uint256) {
        return 1088316817953793602084;
    }
}
contract Main {
    function main() returns (bool) {
        B b;
        b.b().f(b.a.g() + b.c.f());
        (b.a.g() == 1380291166262595789447) && (b.c.f() == 111558004053247584025);
        bool b_a = a.g() < b.a.g() && a.g() < b.a.g();
        bool b_a0 = a.g() <= b.a.g() && a.g() <= b.a.g();
        bool b_c = c.f() < b.c.f() && c.f() < b.c.f();
        bool b_c0 = c.f() <= b.c.f() && c.f() <= b.c.f();
        return b_a && b_c && b_a0 && b_c0;
    }
}
