pragma solidity ^0.8.0;
contract Test31 {
    struct A {
        uint8[2] array;
    }
    function f() public pure returns (A memory) {
        A memory a = A(a);
        return a;
    }
}

contract Test32 {
    struct A {
        uint8[2];
        uint8[5];
        uint8[5];
    }
    function f() public pure returns (A memory) {
        A memory a;
        a[0] = a;
        return a;
    }
}
