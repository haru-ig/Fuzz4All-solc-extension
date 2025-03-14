pragma solidity ^0.8.0;
contract Modifications {
    struct A { int x; uint y; }
    struct B { int a; uint x; }
    uint public a;
    uint public set;
    uint public set1;
    uint public set2;
    uint public clear;
    uint public change;
    function A(int a) public {
        a = a;
    }
    function set() public {
        set = 1;
        set1 = 1;
        set2 = 2;
        a = 2;
    }
    function clear() public {
        clear = 1;
    }
    function set4() public {
        set1 = 1;
        a = 2;
        set = 2;
        change = 2 - a;
    }
    function set3() public {
        set = 1;
        clear = 1;
        set1 = 1;
        set2 = 2;
        a = 2;
    }
    function set11() public {
        set2 = 1;
        set1 = 1;
        change = a + 1;
    }



    function set12() public {
        set1 =
