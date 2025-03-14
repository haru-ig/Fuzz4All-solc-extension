pragma solidity ^0.8.0;
enum Foo {
    First, Second
}
contract C3 {
    enum Foo {
        First, Second,
        Third, Fourth, Fifth, Sixth, Seventh, Eighth
    }
    Foo public a;
    Foo[] public b;
    constructor() {
        b.push(Foo.Second);
    }


}
