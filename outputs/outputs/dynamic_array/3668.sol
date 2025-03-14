pragma solidity ^0.8.0;
contract S {
    uint256[] public a;
    uint256[] public b;
    function f() public {
        a = new uint256[](12);
        a[0] = 10; a[5] = [];
        a[7] = 0; a[8] = 20;
        a[9] = 30; a[9] = [];
        a[10] = 40; a[12] = [];
        a;
        b = a;
    }
    function g() public {
        b = a;
        b;
    }
    function h() public {
        b[0] = {};
        b[12] = {};
    }
    function k() public {
    }
    function l() public {
    }
    function m() public {
        a = [];
        a.push(40); a.push(20);
        a;
    }
    function n() public {
        a = b; a.push(10);
        a;
    }
    function o() public {
    }
    function p() public {
        a[0] = 10;
        a.push(10);
        a.push(40);
        a;
        a[221] = 40;
        a;
    }
}
