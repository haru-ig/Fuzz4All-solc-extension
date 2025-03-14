pragma solidity ^0.8.0;
contract Test34 {
    struct A {
        address ad;
    }
    function f() public pure returns (A memory) {
        A memory a;
        for (; ; ) {
            a.ad = a.ad + 1;
        }
    }
    function g() public pure returns (A memory) {
        A memory a;
        for (; ; ) {
            a.ad = a.ad + 1;
        }
    }
}
