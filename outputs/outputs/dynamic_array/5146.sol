pragma solidity ^0.8.0;
struct A {
    uint8[10] array;
}
contract Test98 {
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
