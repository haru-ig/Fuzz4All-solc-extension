pragma solidity ^0.8.0;
contract Test95 {
    struct A {
        uint8[10][10] array;
    }
    function f() public pure {
        uint8[10][10] memory a_;
        a.array[0][0] = 3;
        a.array[0][1] = 2;
    }
    function g() public pure {
        A memory a;
        a.array[0][0] = 1;
        a.array[0][1] = 2;
    }
    function h() public pure {
        uint8[10][10] memory a;
        a.array[0][0] = 1;
        a.array[0][1] = 2;
    }
    function i() public pure {
        uint8[10][10] memory a;
        a.array[0][0] = 1;
        a.array[0][1] = 2;
    }
    function j() public pure {
        A memory a;
        a.array[0][0] = 1;
        a.array[0][1] = 2;
    }
}
