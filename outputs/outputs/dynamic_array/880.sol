pragma solidity ^0.8.0;
contract Arrays {
    int[] public m = new int[2];
    function f() public noinline {
        uint a;
        b;
        a = c;
    }

    function g() public returns (uint) {
        a[0] = b[0];
        return a[0];
    }

    function h() public pure returns (uint) {
        b = a + 1;
        return b;
    }

    function i() public pure returns (uint) {
        c = 1;
        return c;
    }
}
