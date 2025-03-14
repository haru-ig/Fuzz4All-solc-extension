pragma solidity ^0.8.0;
contract O {
    uint public x;
    mapping(uint=>uint) public y;
    function f() public {
        uint a;
        a = x;
        a = x;
        a = x;
        u(x);
    }
    function g() public {
        uint a;
        a = 1;
        a = 1;
    }
    function h() public {
        uint a;
        x = 1;
        a = x;
        u(x);
    }
    function u(uint a) public {
        uint b;
        b = x-a;
        b = 0;
        b = 0;
        b++;
    }
}
