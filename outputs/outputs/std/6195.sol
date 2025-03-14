pragma solidity ^0.8.0;
contract SemanticallyEquivalent7 {
    uint32 a;
    uint32 b;
    uint32 c;
    function f() public {
        b = new SemanticallyEquivalent_1().f(a);
        c = Library5.f(a);
    }
    function g() public {
        c = Library5.g(a);
        a = Library5.g(b);
    }
    function h() public {
        uint32 v1;
        uint32 v2;
        while (v1 < b) {
            v1 += 1;
            v2 = Library5.f(v1);
        }
        a = v1;
        b = Library5.b;
        while (a > b) {
            a -= 1;
            b += 1;
        }
    }
}
