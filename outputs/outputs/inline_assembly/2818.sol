pragma solidity ^0.8.0;
contract C {
    uint public x;
    uint public z;
    function x() public {
        x = 100;
        z = 10;
        uint public constant a = 8;
        uint _x = 10;
    }
    function y() public {
        x = 100;
        z = 10;
    }
    function z() public {
        x = 100;
        z = 10;
    }
    function w() public {
        x = 10;
        z = 10;
    }
    function e() public {
        x = 100;
        z = 10;
    }
    function f() public {
        x = 100;
        z = a;
    }
}
