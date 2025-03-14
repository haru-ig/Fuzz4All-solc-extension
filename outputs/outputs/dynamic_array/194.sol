pragma solidity ^0.8.0;
contract C4 {
    enum Foo {
        First, Second
    }
    mapping (Foo => uint256) internal b;
    constructor() {
        b[Foo.First] = 10;
        b[Foo.Second] = 20;
    }
}
