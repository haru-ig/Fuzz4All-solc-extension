pragma solidity ^0.8.0;
contract A {
    function f() public pure {}

    function f2(A a) public pure {
        a.f();
    }
}
contract B is A {
    function f() public pure {
        A a;
        A.f(a);
        A.f2(a);
    }
}
contract C is A {
    function g() public pure {
        A a;
        A.f(a);
    }

    function f(C c) public pure {
        c.f();
    }

    function f2(A a) public pure {
        A.f(a);
    }

    function f3(C c) public pure {
        c.f3();
    }
}
