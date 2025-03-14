pragma solidity ^0.8.0;
interface M {
    function g;
    function x();
    function y();
}

contract K {
    function m(uint256 _x) public pure {
      K k;
      k.m(_x);
    }
    function m1(uint256 _x) public pure {
      K k;
      k.m1(_x);
    }
}


contract R {
    K k1;
    function r() public pure {
        M m1; m1 = k1.m(42);
    }
    M m2;
    function m() public pure {
        M m1; m1 = k1.m(42);
        M m2; m2 = k1.m1(42);
    }
}
