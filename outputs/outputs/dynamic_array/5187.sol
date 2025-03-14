pragma solidity ^0.8.0;
contract Test33 {
    struct A {
        uint32[][] a;
        uint32[3][3] b;
    }
    function f() public pure returns (A memory) {
        A memory a;
        for (uint256 i = 0; i < 3; i++) {
            a.a[i] = a.a[i+1];
        }
        a.b[3][3] = a.b[2][2];
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        for (uint256 i = 0; i < 3; i++) {
            a.a[i][2] = a.b[2][3];
        }
        return a;
    }
}
