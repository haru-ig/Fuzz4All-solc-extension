pragma solidity ^0.8.0;
contract Test46 {
    struct A {
        uint32[2] array;
        uint32[2] array1;
    }
    function f() public pure returns (A memory) {
        return A(a){ a.array[0] = a.array[1]; return a };
    }
    function g() public pure returns (A memory) {
        return A(a){ a.array1 = a.array; return a };
    }
}
