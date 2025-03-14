pragma solidity ^0.8.0;
contract A {
    struct C {
        uint a;
        uint b;
    }

    function f(C memory c) public view {
        uint a_ = c.a;
        uint b_ = c.b;
    }

    function h() public view {
        C memory c_;
        ( c_.a, c_.b ) = f( c_ );
    }
}
