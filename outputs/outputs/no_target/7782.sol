pragma solidity ^0.8.0;
contract Simple {
    address m;
    constructor() {
        m = msg.sender;
    }
    function f() public {
        f_inner();
    }
    function f_inner() private {
        emit x(m);
        m = 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFF + 1;
        emit x1(m);
    }
}
contract A {
    uint8 f;
    constructor(uint8 _f) public {
        f = _f;
    }
}
contract C is A {
    bytes1 b;
    constructor(uint8 _f) public {
        f = _f;
        b = 0x80;
    }
}
contract Wrapper {
    uint8 f();
    constructor(uint8 _f) public {
        f = _f;
    }
}
contract D {
    address a;
    A a_;
    uint8 f;
    constructor(uint8 _f, address _a) public {
        f = _f;
        a = _a;
        a_ = A(_a);
    }
    function g() public {
        g_inner();
    }
    function g_inner() private {
        emit x(f);
        emit x(a);
        emit x(b);
        emit x(a);
        emit x(a_);
    }
}
contract E {
    bytes1 b;
    ConstructorC c;
    Simple s;
    C c_;
    constructor(uint8 _f, bytes1 _b) public {
        f = _f;
        b = _b;
        s = Simple(123);
    }
}
contract ConstructorC {
    constructorC(address _address, bytes1 _b) public {
        address addr_c = _address;
        bytes b;
        b = 0;
        emit x(addr_c, b);
    }
}
contract WrapperB {
    uint8 f;
    ConstructorC c;
    C c_;
    bytes1 b;
    Simple s;
    Constructor2 constructor2;

    constructor2(uint8 _f) payable public {
        f = _f;
    }

    constructorC (address _address, bytes1 _b) public {
        address addr_c = _address;
        bytes b;
        b = 0;
        emit x(addr_c, b);
    }

    constructorC(address _c, uint8 _b) public {
        address addr_c = _address;
        bytes b;
        c = ConstructorC(_c, _b);
        c_ = C(2);
        bytes c;
        c = 0;
    }

    uint8 g_inner2() internal{
        emit x1(s);
        emit x1(c.f);
        emit x1(f);
    }
