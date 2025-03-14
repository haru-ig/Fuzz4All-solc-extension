pragma solidity ^0.8.0;
contract A {
    uint256 public foo;
    function updateFoo() public view {
        foo = 5;
    }
    function updateFoo() public view {
        foo = 6;
    }
}
contract B {
    A private ca;
    uint256 public f;
    constructor() {

        updateFoo();
        ca = new A();
        f = foo;
    }

    function updateFoo() public {

        updateFoo();
    }

    function g() public {

        updateFoo();
    }

    function updateFoo() public {
        ca.f = foo;
    }
}
contract C is A, B {
	constructor() public {

        updateFoo();
    }
    function updateFoo() public {
        ca.foo = ca.foo + foo;
        ca.foo = ca.foo - foo;
        ca.foo = ca.foo * foo;
        ca.foo = ca.foo / foo;
        ca.foo = ca.foo + 1;
        ca.foo = ca.foo - 1;
        ca.foo = ca.foo / 2;
        ca.foo = ca.foo * 1000;
        ca.foo = ca.foo % 2147483647;
        ca.foo = ca.foo % 268435455;
        ca.f = ca.foo;
    }
}
