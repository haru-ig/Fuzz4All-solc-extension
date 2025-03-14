pragma solidity ^0.8.0;
contract T {
    uint[1][2] a;
    function z() public pure {
    }
}

pragma solidity ^0.8.0;
contract A is K, T {
    function a() public pure virtual {
    }
    function v() public pure virtual {
    }
    function w() public pure virtual {
    }
}

pragma solidity ^0.8.0;
contract B {
    event e();
    function x() public pure {
    }
}

pragma solidity ^0.8.0;
contract B is B{
    uint[3] a;
    events A{
    }
    function c() public pure {
    }
}
contract C is A, B {
    bool d;
    uint[2] e;
    constructor(uint[3] memory _a) public {
        a = _a;
        a[2] = 0;
    }
    function g() public pure {
    }
    function h() public pure {
    }
}
contract D is C{
    function I() public pure virtual returns (uint, uint[2][3] memory, uint) {
        return (89, a, f);
    }
    mapping(address => mapping(address => B)) I2;
    C d;
    mapping(uint => address) memory m;
    function C() public {
        d.x();
    }
    function A() public {
        d.a();
    }
    function B() public {
        d.v();
        d.w();
    }
    modifier E() {
        B b = d;
        require (d.d);
        A a = d;
        B();
        I2[a][b] = d;
        b();
        a();
        B();
        require (a[c] == 0);
        require (b[c] == 0);
    }
    function C() public {
        B b = d;
        assert (a[c] == 0);
        b.a();
        b.v();
        b.w();
        b();
        b();
        assert (b[c] == 0);
        B();
    }
    function D() public {
        d.a();
        I2[a][b];
    }
    function a() public pure {
        b[c];
        I[d, e];
    }
    function b() public pure {
        b2 = b[c];
        require (b2.x()!= 0);
    }
    mapping(uint => uint) b2;
    mapping(uint => uint) b;
    uint f;
    function d() public pure {
        assert (m[1]!= 0xDFAB204);
    }
}
contract Main {
    D c;
}
