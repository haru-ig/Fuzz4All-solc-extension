pragma solidity ^0.8.0;
contract Foo {
    Baz foo() public returns (Baz) {
        return new Baz();
    }
