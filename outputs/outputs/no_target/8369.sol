pragma solidity ^0.8.0;
contract Simple {
    function f(uint n_) public pure {
        n_ = n_;
    }
    function f(uint128 n_) public pure {
        n_ = n_;
    }
    function f(address a) public pure {
        a;
    }
    function f(uint n_, address a) public pure {
        n_, a;
    }
    function f(uint x) public pure {
        x;
    }
    function f(uint128 x) public pure {
        x;
    }
    function f(address x) public pure {
        x;
    }
    function f_neg(int x) public pure {
        -x;
    }
    function f_pow(uint x, uint y) public pure {
        x ** y;
    }
}
