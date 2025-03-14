pragma solidity ^0.8.0;
contract T9S {
    struct Inner {
        uint8 a, b;
        uint8 x;
    }
    struct Foo {
        uint8 x;
    }
    function h(Inner[] memory, uint8[] storage) public {
        uint8[] storage2;
        Inner[] memory memory1;
        storage2;
        memory1;
    }
}

pragma solidity ^0.8.0;
contract T10S {
    struct Outer {
        uint8 a, b;
        uint8 x;
    }
    struct Inner {
        uint8 a, b;
    }
    struct Foo {
        uint8 x;
    }
    constructor(
        Outer memory o1, Inner memory inner1, Inner memory inner2) public {
        Outer memory o2, Inner memory inner3, Inner memory inner4;
        Outer memory inner5; Outer memory inner6;
        o2;
        inner1;
        inner2;
        inner3;
        inner4;
        inner5;
        inner6;
    }
    function h(Outer memory o1, Inner memory inner1) public view {
        Inner memory inner2; Inner memory inner3;
        Inner memory inner4; Inner memory inner5; Outer memory o2;
        Outer memory inner7; Inner memory inner8; Outer memory o3; Outer memory o4;
        Outer memory inner9; Inner memory inner10;
        o2;
        inner1;
        inner2;
        inner3;
        inner4;
        inner5;
        o1;
        inner10;
        inner7;
        inner8;
        o2;
        inner10;
        o4;
        inner9;
        inner8;
        inner6;
    }
    function g(Inner memory a) public view {
    }
    function foo(Outer memory o1) public {
        Inner memory inner1; Inner memory inner2; Outer memory o2;
        Outer memory inner3; Inner memory inner4; Outer memory o3; Outer memory o4;
        Inner memory a; Inner memory b;
        uint8[] storage2; uint8[] storage3;
        Inner[] memory memory1;
        Inner[] memory memory2;
        Inner[] memory
