pragma solidity ^0.8.0;
contract Test94G {
    struct A {
        uint56[] array;
    }
    function f() public pure {
        uint56[] memory a;
    }
    function g() public pure {
        A memory a;
    }
    function h() public pure {
        uint56[] memory a;
    }
    function i() public pure {
        uint56[] memory a;
    }
    function j() public pure {
        A memory a;
    }
}
