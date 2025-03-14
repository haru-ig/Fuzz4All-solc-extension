pragma solidity ^0.8.0;
contract Test30 {
    struct A {
        uint8[10] array;
    }
    function g1() public pure returns (A memory) {
        A[2] memory a;
        a = A(a);
        return a;
    }
    function g2() public pure returns (A memory) {
        A[2] memory a;
        a.array = a.array;
        return a;
    }
}
