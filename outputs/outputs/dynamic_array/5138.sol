pragma solidity ^0.8.0;
contract Test97 {
    struct A {
        uint8[10][10] array;
    }
    function f() public pure returns (A memory) {
        A memory a = A(0x00);
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a = A(0x00);
        return a;
    }
    function h() public pure returns (A memory) {
            A memory a = A(0x00);
            return a;
        }
    function i() public pure returns (A memory) {
        A memory a = A(0x00);
        return a;
    }
    function j() public pure returns (A memory) {
        A memory a = A(0x00);
        return a;
    }
}
