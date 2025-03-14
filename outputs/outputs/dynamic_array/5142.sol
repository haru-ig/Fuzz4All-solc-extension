pragma solidity ^0.8.0;
contract Test275 {
    struct A {
        uint8 array;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a.array = a.array;
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        a.array = a.array;
        return a;
    }
        function h() public pure returns (A memory) {
        A memory a;
        a.array = a.array;
        return a;
    }
    function i() public pure returns (A memory) {
        A memory a;
        a.array = a.array;
        return a;
    }
    function j() public pure returns (A memory) {
        A memory a;
        a.array = a.array;
        return a;
    }
}
