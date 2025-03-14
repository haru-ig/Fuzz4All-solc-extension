pragma solidity ^0.8.0;
contract Test34 {
    struct A {
        uint[] a;
        uint[] a1;
        uint[] a2;
    }
    function f() public pure returns (A memory) {
        A memory a;
        for (uint256 i = 0; i < 2; i++) {
            a.a[i] = a.a[i+1];
        }
        return a;
    }
}
