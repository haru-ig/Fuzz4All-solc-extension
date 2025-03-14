pragma solidity ^0.8.0;
contract G {
    uint256 public a;
    uint256 public b;

    constructor() {}
    function f() public {
        a;
    }
    function g() public {
        b;
    }
    function h() public {
        a;
    }
    function k() public {
        b;
    }
    function l() public {
        a;
    }
    function m() public {
    }
    function n() public {
    }
    function o() public {
    }
    function p() public {
    }
}
contract A {
    constructor() {}
    function a() public {
    }
    function b() public {
    }
    function c() public view{
    }
    function d() public view{
    }
    function e() public view{
    }
    function f() public view{
    }
}
contract B {
    uint256 public a;
    uint256 public b;

    constructor() {}
    function g() public {
        a;
    }
    function h() public {
        b;
    }
    function i() public {
        a;
    }
    function j() public {
        b;
    }
    function k() public {
        a;
    }
    function l() public {
    }
    function m() public {
    }
    function n() public {
    }
    function o() public {
    }
    function p() public {
    }
}
contract C {
    constructor() {}
    function f() public {
        a;
    }
    function g() public {
        b;
    }
    function h() public {
        a;
    }
    function k() public {
        b;
    }
    function l() public {
        a;
    }
}
contract D is A, B, C {}
