pragma solidity ^0.8.0;
contract Bad {
    function f() public {
        Simple s;
        s.f();
        Another a;
        a.f();
        Intra i;
        i.f();
        Interior i;
        i.f();
    }
}
