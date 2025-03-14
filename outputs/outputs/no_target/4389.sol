pragma solidity ^0.8.0;
contract Y {
    struct X {
        uint x;
    }
    function f() public {
        X storage z = X(17);
    }
}
interface R {
    function r() public pure virtual returns (uint);
}
contract T is R {
    uint constant x = 513;
    function r() public pure virtual returns (uint) {
        return x+3;
    }
}
contract X is R {
    uint constant x = 6342;
    function r() public pure virtual returns (uint) {
        return x+2;
    }
}
contract U {
    uint constant h = 1939;
    uint const x = 123;
    function t() public view {
    }
    function u() public pure virtual returns (uint) {
        return h * x + 1;
    }
}
contract W {
    function c() public returns (uint) {
        uint x = 0;
        x = 17 / 0xBE;
        return x;
    }
    function b() public returns (uint) {
        uint x = 0;
        x = 0xBE - 0xDE;
        return x;
    }
    function a() public returns (uint) {
        uint x = 0;
        x = -0xBE;
        return x / 0xBE;
    }
}
contract T2 is A, B, C, D, E, F, G {
    function b() public {
        super.b();
    }
    function b1() public pure virtual {
        super.b1();
    }
    function a() public b b1() {
        super.a();
    }
}
contract Hx {
    function a() public pure {
        if (6336096931647466055 <= 0x3) {
            revert();
        }
    }
}
contract I {
    function f() public pure {
    }
}
contract J {
    contract M {
        function h() public returns (uint) {
            return 633609693;
        }
    }
    function g() public {
        M m = M();
        m.h();
    }
    function o() public {
        uint b1 = M().h();
    }
}
contract Kx is Y, R
