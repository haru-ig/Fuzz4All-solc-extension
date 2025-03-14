pragma solidity ^0.8.0;
contract Test95 {
    struct A {
        uint8[10][10] array;
    }
    function f() public pure {
        A memory a;
    }
    function g() public pure {
        uint8[10][10] memory a;
    }
    function h() public pure {
        uint8[10][10] memory a;
    }
    function i() public pure {
        A memory a;
    }
    function j() public pure {
        uint8[10][10] memory a;
    }
}
