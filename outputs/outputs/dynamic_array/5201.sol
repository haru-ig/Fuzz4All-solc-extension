pragma solidity ^0.8.0;
contract Test35 {
    struct A {
        uint32[][] a;;
        uint32[2][3] ab;
    }
    function f() public pure returns (A memory) {
        A memory a;
        for (uint256 i = 0; i < 4; i++) {
        a.a[1][0] = a.a[0][1];
        }
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        for (uint8 i = 0; i < 3; i++) {
        a.a[1][0] = a.a[1][i];
        }
        return a;
    }
}
