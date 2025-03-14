pragma solidity ^0.8.0;
contract C3 {
    enum Foo {
        First, Second
    }
    Foo[] public a;
    constructor() public payable {
        a.push(Foo.Second);
    }
}
pragma solidity ^0.8.0;
contract C4 {
    struct Foo {
        uint8 b;
    }
    struct Bar {
        bool c;
    }
    Foo[] public a;
    Bar[] public b;
    bool public c = true;
    Foo memory f;
    bool public d = true;
    bool public testbool = true;

    modifier not_foo() {
        if (!c) {
            f.b = 1;
            _;
        }
    }

    constructor() {
        a.push(Foo(0));
        b.push(Bar(true, false));
        c = true;
        d = true;
        testbool = true;
    }

    function foo() public pure returns (Foo memory) {
        return Foo(0);
    }
    function foo2() public pure returns (Foo[] memory) {
        return new Foo[](0);
    }
    function foo3() public pure returns (Foo memory a) {
        return Foo(0);
    }
    function foo4() public pure returns (Bar[] memory) {
        return new Bar[](0);
    }
    function foo5(Foo memory f) public pure reverts {
    }
    function foo6(Foo memory f, uint b) public pure {
    }
    function foo7(uint96 a) public pure {
    }
}
