pragma solidity ^0.8.0;
contract O {
    uint public x;
    mapping(uint=>uint) public y;
    function f() public {
        uint a;
        a = 1;
        a = x;
        u(x);
        a = x+y["aa"];
        a = 10;
        b(x);
    }
    function u(uint a) public {
        uint b;
        b = x-a;
        b = x/0;
        b = x%2;
        b = a << 0;
        b = a >> 0;
        b = 1 - a;
    }
    function b(uint a) public {
        uint b;
        b = x;
        b++;
    }
}<jupyter_output><empty_output>
