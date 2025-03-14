pragma solidity ^0.8.0;
contract Q {
    X x;
    function f() public returns (uint) {
        return x.f();
    }
}
contract B is Q {
    function f() public returns (uint) {
        return 3;
    }
}
contract C {
    function g() public returns (uint) {
        G g = G (0xf0f0F0F0F0F0f0F0F0F0F0F0F0F0F0F0F0F0F0);
        emit E ();
        return g.f();
    }
}
contract D is B {

    function f() public returns (uint) {
        return super.f();
    }
}
contract E is D {
}
contract Program {
    function f() public returns (uint) {
        C c = C();
        uint res = c.g();
        require(res == 3);
        emit E ();
        return res;
    }
}
contract Test is Program {
    function foo() public returns (uint) {
        return f();
    }
}
