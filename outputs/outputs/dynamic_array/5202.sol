pragma solidity ^0.8.0;
contract Test33 {
    struct A {
        uint32[][] a;
        uint32[3][2] a1;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a.a[1][0] = 22;
        for (uint256 i = 0; i < 2; i++) {
            a.a1[1][0][0] = 77;
        }
        return a;
    }
}
