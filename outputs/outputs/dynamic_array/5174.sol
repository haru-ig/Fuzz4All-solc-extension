pragma solidity ^0.8.0;
contract Test33 {
    struct A {
        uint32[2] array;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a = a;
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        a.array[0] = a.array[1];
        return a;
    }
}
