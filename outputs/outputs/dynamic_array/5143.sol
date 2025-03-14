pragma solidity ^0.8.0;
contract Test98 {
    struct A {
        uint16[10][10] array;
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
