pragma solidity ^0.8.0;
contract O {
    uint public x;
    mapping(uint=>uint) public y;
    function f() public {
        uint a;
        x = 1;
        a = x;
        x = 0;
        a = 0;
        a = 0;
    }
    function g() public {
        uint a;
        y = 1;
        a = x;
        a = 1;
        a = 1;
    }
    function h() public {
        uint a;
        x = 1;
        a = x-x;
        a = 0;
    }
}
