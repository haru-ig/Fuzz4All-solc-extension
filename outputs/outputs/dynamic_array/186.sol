pragma solidity ^0.8.0;
 contract C3 {
    enum Foo {
        First, Second,
        Third, Fourth, Fifth, Sixth, Seventh, Eighth
    }
    Foo public a;
    Foo[3] public b;
    constructor() {
        b.push(Foo.Second);
    }
}
