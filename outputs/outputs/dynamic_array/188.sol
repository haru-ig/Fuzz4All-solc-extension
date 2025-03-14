pragma solidity ^0.8.0;
contract C3 {
    enum Foo {
        First, Second
    }
    Foo[] public a;
    constructor() {
        a.push(Foo.Second);
    }
}
