pragma solidity ^0.8.0;
contract Test {
    uint public test;
    function changeTest() public {
        test = 20;
    }
}

pragma solidity ^0.8.0;
contract A {
    function foo() public pure {}
}
contract B {
    function bar() public pure {}
}
contract C {
    function baz() public pure {
        A a;
        B b;
    }
}
contract D {
    function qux() public view returns (A) {
        A a;
        B b;
    }
}
contract E {
    function quux() public pure returns (C) {
        C c;
        B b;
    }
}
contract F {
    function quuux() public pure(IA) returns(A) {}
    function quuuux() public pure returns (C) {
        B b;
        C c;
    }
    function quuuuuux() public pure returns (B,C) {
        C c;
        B b;
    }
}
contract G {
    function func() public pure {
        A a;
        uint b;
        uint[] c;
    }
}
