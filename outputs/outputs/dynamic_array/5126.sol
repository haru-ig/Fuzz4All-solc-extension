pragma solidity ^0.8.0;
contract Test95 {
    struct A {
        uint8[10][10] array;
    }
    address public owner;
    function __constructor() public {
        uint256 len;
        len = 1;
        uint8[10][10] memory a;
        a = A(a);
        len += 1;
        a[0][0] = 1000;
        emit emitmsg(a);
    }
    function emitmsg(A memory a) public view {
        uint8[10][10] memory a2;
        a2 = a;
        emit msg(a2);
    }
    function msg(A memory a) public view {}
    struct B {
        uint8[10][10] array;
    }
    function h() public pure {}
    function i() public pure {}
    function __send() public {
        emit msg(B(bytes(uint8(0))));
    }
}
