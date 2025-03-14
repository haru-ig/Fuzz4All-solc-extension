pragma solidity ^0.8.0;
contract Test33 {
    struct A {
        uint16[] array;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a.array = a.array;
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        a.array[0] = 5;
        return a;
    }
}
