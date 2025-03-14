pragma solidity ^0.8.0;
contract Test99 {
    struct A {
        uint8[6] array;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a.array = a.array;
        a.array[2] = a.array[3];
    }
    function g() public pure returns (A memory) {
        A memory a;
        a.array = a.array;
        a.array[2] = a.array[3];
    }
}
