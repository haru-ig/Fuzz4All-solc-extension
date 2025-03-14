pragma solidity ^0.8.0;
contract Test34 {
    struct A {
        uint32[][] a;
        uint32[3][2] a1;
    }
    function f() public pure returns (A memory) {
        A memory a;
        for (uint256 i = 0; i < 2; i++) {
            a.a[i] = a.a[i+1];
        }
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        for (uint256 i = 0; i < 2; i++) {
            a.a[0][i] = a.a[1][i];
        }
        return a;
    }
}
