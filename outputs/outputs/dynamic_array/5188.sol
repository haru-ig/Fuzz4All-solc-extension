pragma solidity ^0.8.0;
contract Test34 {
    struct A {
        uint32[] a;
        uint32 a1;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a.a[1] = a.a[0];
        a.a = new uint32[](1);
        return a;
    }
}
