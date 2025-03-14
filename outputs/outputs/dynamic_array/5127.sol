pragma solidity ^0.8.0;
contract Test95 {
    struct A {
        uint8[10][10] memory array;
    }
    uint256 constant N = 10;
    uint256 constant M = 10;
    function f() public pure {
        A memory a;
        a.array.resize(1, 10);
        a.array.resize(N + M, 1);
        a.array.resize(1, 1);
    }
    function g() public pure {
        A memory a;
        a.array = A.resize(a.array, N + M, 1);
        a.array.resize(1, 1);
        a.array = A.resize(a.array, 1, 10);
        a.array.resize(1, 1);
    }
    function h() public pure {
        A memory a;
        a.array[0] = A.resize(a.array[0], 1);
        a.array[0] = A.resize(a.array[0], 65535);
        a.array[0] = A.resize(a.array[0], 65535);
        a.array[0] = A.resize(a.array[0], 65535);
    }
    function i() public pure {
        A memory a;
        a.array[0] = A.resize(a.array[0], 0x00);
        a.array[0] = A.resize(a.array[0], 0x00);
        a.array[0] = A.resize(a.array[0], 0x00);
        a.array[0] = A.resize(a.array[0], 0x00);
        a.array[0] = A.resize(a.array[0], 0x00);
    }
    function j() public pure {
        A memory a;
        a.array = A.resize(a.array, 0, 10);
        a.array = A.resize(a.array, 0, 1);
    }
}
