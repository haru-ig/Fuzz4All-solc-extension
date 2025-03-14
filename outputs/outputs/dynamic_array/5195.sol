pragma solidity ^0.8.0;
contract Test35 {
    struct A {
        uint32[][] a;
    }
    function f() public pure returns (A memory) {
        A memory a = A({a: [1,2,3]});
        a = a;
        a.a[0][0] = 0;
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a = A({a: [1,2,3]});
        a[0][0] = 0;
        return a;
    }
}
