pragma solidity ^0.8.0;
contract Test33 {
    struct A {
        uint32[] array;
        uint32[2] array1;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a.array[0] = a.array1[1];
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        a.array1 = a.array;
        return a;
    }
}
