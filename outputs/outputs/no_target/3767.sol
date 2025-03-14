pragma solidity ^0.8.0;
contract E3 {
    uint256 d;
    uint256 e;
    uint256 f;
    uint256 g;
    constructor() public {
        a = ~a^1;
        d = ~d^2;
        e = ~e^3;
        d = ~d^2;
        d = ~d^2;
        f = ~f^3;
        g = ~g^4;
    }
    function h() public {
        e = ~e^3;
        g = ~g^4;
    }
    function i() public {
        a = ~a^1;
        g = ~g^4;
        d = ~d^2;
        e = ~e^3;
        f = ~f^3;
        d = ~d^2;
        g = ~g^4;
        f = ~f^3;
        d = ~d^2;
        e = ~e^3;
        g = ~g^4;
        a = ~a^1;
        d = ~d^2;
        g = ~g^4;
        a = ~a^1;
    }
    function j() public {
        a = ~a^1;
        f = ~f^3;
        a = ~a^1;
        f = ~f^3;
    }
    function k() public {
        j();
    }
}
#pragma version 0.5.10;
contract E3v3 {
    uint256 d;
    uint256 e;
    uint256 f;
    uint256 g;
    constructor() public {
        a = ~a^1;
        d = ~d^2;
        e = ~e^3;
        e = ~e^3;
        d = ~d^2;
        d = ~d^2;
        f = ~f^3;
        g = ~g^4;
    }
    function h() public {
        e = ~e^3;
        g = ~g^4;
    }
    function i() public {
        a = ~a^1;
        g = ~g^4;
        d = ~d^2;
        d = ~d^2;
        g = ~g^4;
        f = ~f^3;
        d = ~d^2;
        g = ~g^4;
        f = ~f^3;
        d = ~d^2;
        e = ~e^3;
        d = ~d^2;
        g = ~g^4;
        a = ~a^1;
    }
    function j()
