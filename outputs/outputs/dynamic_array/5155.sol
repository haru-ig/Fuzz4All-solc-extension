pragma solidity ^0.8.0;
contract Test31 {
    struct A {
        uint8[10] array;
    }
    modifier g() {
        A memory a = A(0x40);
        a.array = a.array;
        _;
    }
    function h() public {
        A memory a = g();
        a.array = a.array;
    }
    function i() public {
        A memory a = g();
        a.array = a.array;
    }
    function j() public {
        A memory a = g();
        a.array = a.array;
    }
}

pragma solidity ^0.8.0;
contract Test32 {
    struct A {
        uint8[5] array;
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
    function h() public pure returns (A memory) {
        A memory a;
        a.array = a.array;
        return a;
    }
}
