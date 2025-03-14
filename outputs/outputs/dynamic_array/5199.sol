pragma solidity ^0.8.0;
contract Test35 {
    struct A {
        uint32[][] a;
        uint32[100][2] a1;
    }
    function f() public pure returns (A memory) {
        A memory a;
        for (uint256 _i = 0; _i < 2; _i++) {
            a.a[_i] = a.a[_i+1];
        }
        for (uint256 j = 0; j < 100; j++) {
            a.a1[j][:][0] = a.a1[j][:][1];
        }
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        for (uint256 _i = 0; _i < 2; _i++) {
            a.a[0][_i] = a.a[1][_i];
        }
        for (uint256 j = 0; j < 100; j++) {
            a.a1[j][:][1] = a.a1[j][:][0];
        }
        return a;
    }
}
