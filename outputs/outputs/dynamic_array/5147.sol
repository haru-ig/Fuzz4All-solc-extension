pragma solidity ^0.8.0;
contract Test98 {
    struct A {
        uint8[6] array;
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
}
