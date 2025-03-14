pragma solidity ^0.8.0;
contract Test94F5 {
    struct A {
        uint256 array;
    }
    function f() public pure {
        A memory x = A(0);
        x.array = 10000000000;
    }
    function g() public pure {
        C memory x = C(0);
        x.array = 10000000000;
    }
    function h() public pure {
        B memory x = B(0);
        x.array = 10000000000;
        x.array[0] = 1000000000;
    }
    function i() public pure {
        G memory x = G(0);
        x.array[0] = 10000000000;
        x.array_1[0] = 10000000000;
    }
    function j() public pure {
        G memory x = G(0);
        x.array_1[0] = 10000000000;
        x.array_1 = 0;
    }
    function k() public pure {
    }
}
