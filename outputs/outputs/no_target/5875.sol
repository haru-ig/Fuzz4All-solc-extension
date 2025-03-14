pragma solidity ^0.8.0;
contract A {
    bool private p;
    address public addr;
    constructor() {
        addr = 1;
        p = true;
    }
}
contract D {
    bool public constant x;
    C c;
    function f() public returns (bool) {
        int memory a = 15;
        c = new C();
        c.f();
        x = false;
        return false;
    }
}
contract C {
    bool constant x = true;
}
contract I {
    function f() public view returns (bool) {
        return true;
    }
}
contract D {
    bool public constant x;
    constructor(I x) {
        x = x.f();
        c = new C();
    }

    C c;
    bool public p;
    bool public v;
    function f() public view returns (bool) {
        p = true;
        x = false;
        if (x) {
            p = false;
            a = (x==1) && 1;
            if (a) p = true;
        }
    }
}
contract E {
    function set(bool val, uint x_, uint y_) public {
        x = x_;
        y = y_;
        b = b!= val;
    }

    bool c;
    bool b;
    uint x;
    uint y;
    uint w;
    uint z;
}
contract F {
    function f() public pure returns (bool) {
        a = true;
        a = a || true;
        a = a || true;
        x = x;
        y = y;
        z = x + x + y + z;
        a = a;
        x = b;
        y = b;
        return true;
    }
}
contract G {
    function f() public pure returns (bool) {
        a = true;
        a = a || true;
        a = a || true;
        a = a || true;
        a = a || true;
        a = a || true;
        a = a || true;
        a = a || true;
        a = a || true;
        a = a || true;
        a = a || true;
        return true;
    }
}
contract H {
    uint constant v = 0;

    function f(uint x) internal returns (uint) {
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x;
        x
