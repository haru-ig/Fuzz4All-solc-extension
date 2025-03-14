pragma solidity ^0.8.0;
contract C5 {
    enum Foo {
        One, Two
    }
    mapping (Foo => uint256) internal b;
   constructor() {
        b[Foo.One] = 10;
        b[Foo.Two] = 20;
    }
}
