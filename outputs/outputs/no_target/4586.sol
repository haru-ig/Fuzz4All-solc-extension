pragma solidity ^0.8.0;
contract B {
    function g() public pure returns(uint) {
        return 1;
    }
}
contract C {
    struct A{
        uint a;
        uint b;
    }
    struct B {
        uint c;
        uint d;
        uint e;
        uint56 f;
    }

    uint public i = 0;

    constructor (address) public {
        i = 5;
    }

    function f() public returns (uint256, uint256) {
        return (B([B([ B([A([i, uint256(12)]), B((uint256(3))), B(uint256(5))]), B(i), B(uint256(6))]))[2], B(0x0000))[0];
    }
}

contract D is A {
    function f() public pure returns(uint256) {
        return A.super.f();
    }
}
contract E is B {
    function f() public pure returns(uint256, uint256) {
        return (B.super.g() + B.super.g(), B.super.g());
    }
}
contract F is C {
    struct A {
            uint a;
            uint b;
    }

    constructor(address) public {
    }

    function f() public pure returns (uint256, uint256) {
        B b = new B(0x000, 0x000, 0x000, 0x000);
        A a = new A(123, 456);
        return (a.a + b.a + 456 + b.b + b.a + b.b + a.a + b.b, a.b + a.a + b.a + b.a + uint256(121) + a.a + b.b + a.b + a.b + 456);
    }
}
contract G {
    A a;
    B b;

    function g() public returns (uint, uint, uint) {
        uint c = a.function2();
        uint d = a.function1();
        uint e = b.function2();
        return (c, d, e);
    }
}
contract H {
    A a;
    B b;

    function f() public returns (byte, byte) {
        byte c = a.function2();
        byte d = a.function1();
        byte e = b.function2();
        return (c, d);
    }
}
contract I {
    A a;
    B b;

    function f() public returns (uint8, uint8) {
        uint8 c = a.function2();
        uint8 d = a.function1();
        uint8 e = b.function2();
        return (c, d);
    }
