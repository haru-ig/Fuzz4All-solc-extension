pragma solidity ^0.8.0;
contract Duplicated {
    function f() public {
    }
    }
contract DuplicateAndChanged {
    uint40 public a;
    uint40 public b;
    constructor (
        uint40 _value1,
        uint40 _value2
    ) public {
        a = 2;
        b = 2;
        c = 2;
    }
    function set (
        uint160 a,
        uint160 d
    ) public {
        a = d + 2;
        d = a + 2;
        a = d + 2;
        a = c + 2;
    }
    function add (
        uint40 a,
        uint40 b
    ) public returns (uint40 c){
        c = a + b + 2;
    }
    }
