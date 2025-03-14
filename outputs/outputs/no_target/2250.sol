pragma solidity ^0.8.0;
contract mutation6 {
    uint256 public c;
    constructor() public {
        c = 5;
    }
    function g() public {
        c = 4;
        d();
    }
    function h() public {
        c = 5;
    }
    function d() public {
        c = 6;
    }
    function e() public {
        c = 7;
    }
    function f() public {
        c = 8;
    }
    function g() public {
        c = 9;
    }
    function f() public {
        c = 10;
    }
    function d() public {
        c = 11;
    }
    function g() public {
        c = 12;
    }
    function c() public {
        c = 13;
    }
}
contract mutation7 {
    uint256 public a;
    uint256 public b;
    constructor() public {
        a = 1;
        b = 1;
    }
    function f() public {
        a = 1;
        b = 2;
        g();
    }
    function h() public {
        a = 2;
        b = 2;
        g();
    }
    function g() public {
        a = 2;
        b = 2;
        g();
    }
    function h() public {
        a = 2;
        b = 2;
        g();
    }
    function c() public {
        a = 2;
        b = 2;
        g();
    }
    function d() public {
        b = 1;
        f();
    }
    function e() public {
        b = 2;
        f();
    }
    function f() public {
        b = 4;
        e();
    }
    function d() public {
        b = 6;
        e();
    }
    function e() public {
        b = 8;
        f();
    }
}
contract mutation {
    uint256 public b;
    uint256 public c;
    uint public x;
    constructor() public {
        b = 1;
        c = 1;
        x = 1;
    }
    function f() public {
        a();
        b = 2;
        c = 2;
    }
    function g() public {
        a();
        b = 3;
        c = 3;
        h();
    }
    function h() public {
        a();
        b = 4;
        c = 4
