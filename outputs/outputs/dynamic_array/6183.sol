pragma solidity ^0.8.0;
contract Test090009 {
    struct A {
        uint256 a;
        uint256 b1;
        uint256 b2;
    }
    A[] a;
    constructor (uint256 x) public {
        a.push(A(x, x, x));
    }
    event Mutate3 (A a);
}
