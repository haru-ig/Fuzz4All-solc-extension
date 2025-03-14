pragma solidity ^0.8.0;
contract A {
    uint public a = 0xfffffffffffffffffffffff + 1;
    function f(bool b) public pure { unchecked {
        assert (b == (a < 0xfffffffffffffffffffffff + 1));
        a -= 10;
    } } }
contract P1 { function f(uint x, uint y) public pure { assert(uint8(x) + x == y); unchecked { a -= 10; }} }
contract P2 { function f(address, uint) public pure { a -= 10; } }
contract P3 { function f(uint, uint) public pure { a -= 10; } }
