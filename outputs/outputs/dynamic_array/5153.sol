pragma solidity ^0.8.0;
contract Test99 {
    struct A {
        uint8[6] array;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a.array[1] = a.array[5];
        a.array[2] = a.array[5];
        a.array[3] = a.array[5];
        a.array[4] = a.array[5];
        a.array[5] = a.array[5];
        a.array[6] = a.array[6];
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        a.array[1] = a.array[1];
        a.array[2] = a.array[5];
        a.array[3] = a.array[1];
        a.array[4] = a.array[5];
        a.array[5] = a.array[5];
        a.array[6] = a.array[5];
        return a;
    }
}
