pragma solidity ^0.8.0;
contract Test35 {
    struct A {
        uint[] a[];
        uint[3][4] a1[2][3][4];
    }
    function f() public pure returns (A memory) {
        A memory a;
        for (uint256 i = 0; i < 2; i++) {
            for (uint256 j = 0; j < 4; j++) {
                a.a[i][j] = a.a[i][j];
            }
            a.a1 = a.a1;
        }
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        for (uint256 i = 0; i < 2; i++) {
            for (uint256 j = 0; j < 3; j++) {
                a.a1 = a.a1;
            }
            a.a1 = a.a1;
        }
        return a;
    }
}
