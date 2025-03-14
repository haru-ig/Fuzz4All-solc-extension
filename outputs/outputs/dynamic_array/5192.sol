pragma solidity ^0.8.0;
contract Test35 {
    struct A {
        uint32[][] a;
    }
    function f() public pure returns (A memory) {
        A memory a;
        for (uint256 i = 0; i < 2; i++) {
            a.a[i] = a.a[1];
        }
        return a;
    }
}
