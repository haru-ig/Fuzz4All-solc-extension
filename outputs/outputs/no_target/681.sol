pragma solidity ^0.8.0;
contract A {
    function A() {

    }

    function A(uint64 a) {
        unchecked {
            for (uint64 i = 0; i < a; i++);
        }
        A();
    }

    function A(uint a) {
        unchecked {
            for (; a > 0; a--, a--);
        }
        A();
    }

    function A(uint a, uint b) {
        unchecked {
            for (uint i = 0; i <= a; i++) {};
            A(i);
        }
    }

    function A(uint a, uint b, uint c) {
        unchecked {
            require(c > 0, "a,b,c must not be negative");
            for (uint y = b; y > 0; y--, y--) {}
            for (uint z = c; z > 0; z--) {}
            A(i);
        }
    }
}
A();
contract B {
    function B(uint a) {
        unchecked {
            a = a + 1;
        }
    }
}

contract C {
    function C() {

    }

    function C(uint a) {
        unchecked {
            a = a + 1;
        }
    }

    function C(uint a, uint b) {
        unchecked {
            a = a + 1;
            a = a + 1;
        }
    }

    function C(uint a, uint b, uint c) {
        unchecked {
            a += c;
            a += c;
        }
    }

    function C(uint a, uint b, uint c, uint d) {
        unchecked {
            a = a + 1;
            a = a + 1;
            a += d;
            a += d;
        }
    }
}

contract D is B, C {}
