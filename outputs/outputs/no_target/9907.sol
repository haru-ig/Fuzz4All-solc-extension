pragma solidity ^0.8.0;
contract C {
    function f(uint x) public pure returns (uint) {
        return x+1;
    }
}
contract D {
    function f(uint x) public pure returns (uint) {
        return x+1;
    }
}
contract O {
    struct Foo {
        uint foo;
    }

    function test() public {
        D storage c = D();

        foo = c.f((4u).add(1000));
    }
}
contract M {
    function f() public pure returns (int) {
        return 0;
    }
}
