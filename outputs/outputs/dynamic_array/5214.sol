pragma solidity ^0.8.0;
contract Test35 {
    struct A {
        uint32[][] a;
    }
    function f() public pure returns (A memory) {
        A memory a;
        uint256 dim = 0;
        for (uint256 i = 0; i < 3; i++) {
            dim = dim + 1;
            a.a[i] = new uint32[](dim);
        }
        return a;
    }
}

pragma solidity ^0.8.0;
contract Test36 {
    struct A {
        uint[] a;
    }
    function f() public pure returns (A memory) {
        A memory a;
        uint256 dim = 0;
        for (uint256 i = 0; i < 2; i++) {
            dim += i;
            a.a[dim] = i;
        }
        return a;
    }
}
