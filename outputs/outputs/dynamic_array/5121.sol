pragma solidity ^0.8.0;
contract Test93L {
    struct A {
        uint8[10][10] array;
    }
    function f() public pure {
    }
    function g() public pure {
        A memory a;
    }
    function h() public pure {
        uint8[10][10] memory a;
    }
    function i() public pure {
        uint8[10][10] memory a;
    }
    function j() public pure {
        A memory a;
    }
}
