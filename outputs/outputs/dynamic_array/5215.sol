pragma solidity ^0.8.0;
contract Test37 {
    struct A {
        uint256[] a;
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
contract Test38 {
    function f() public pure {
        bytes32 foo;
        assert(foo.length == 0);
    }
}
contract Test39 {
    struct A {
        uint256 [] a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        uint256 dim = 0;
        for (uint256 i = 0; i < 3; i++) {
            dim = dim + 1;
            a.a[i] = new uint256[](dim);
        }
        return a;
    }
}
contract Test40 {
    struct A {
        uint256 [] a;
    }
    function f() public pure returns (A memory) {
        A memory a;
        uint256 dim = 0;
        for (uint256 i = 0; i < 3; i++) {
            dim = dim + 1;
            a.a[i] = new uint256[](dim);
        }
        return a;
    }
}
contract Test41 {
    struct A {
        uint256[][] a;
    }
    function f() public pure returns (A memory) {
        A memory a;
        uint256 dim = 0;
        for (uint256 i = 0; i < 2; i++) {
            dim = dim + 1;
            a.a[i] = new uint256
