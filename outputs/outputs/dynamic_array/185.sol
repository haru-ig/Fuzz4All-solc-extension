pragma solidity ^0.8.0;
contract C5 {
    enum Foo {
        First, Second,
        Third, Fourth, Fifth, Sixth, Seventh, Eighth
    }
    Foo public a;
    Foo[] public b[Foo.Third];
    Foo[Foo.Third] public c;
    constructor() {
        c.push(Foo.Third);
    }
}
