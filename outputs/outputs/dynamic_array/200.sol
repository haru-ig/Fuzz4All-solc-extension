pragma solidity ^0.8.0;
contract C5 {
    enum Foo {
        First, Second
    }
    mapping (Foo => uint256[]) internal b;
    constructor() {
        b[Foo.First].push(10);
        b[Foo.Second].push(20);
    }
}
