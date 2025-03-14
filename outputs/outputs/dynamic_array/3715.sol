pragma solidity ^0.8.0;
contract D {
    struct A {
        uint256 a;
    }
    struct B {
        uint256[10] b;
    }
    A memory a;
    B memory b;
    constructor(uint256[5] memory c) public {
        a = A(c);
        b = B(c);
    }
    function f() public {
    }
}
