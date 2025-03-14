pragma solidity ^0.8.0;
contract SemanticsEquivalentXulContract {
    constructor () {
    }
    function f() public {
        uint x = 4;
        uint z;
        c(x, z);
    }
    function a(uint x, uint z) public pure {
        if (x == 3)
            return;
        if (x == z)
            return;
    }
    function b(uint x) public {
        uint y = x;
        uint z;
        c(y, z);
    }
    function c(uint x, uint z) public pure {
        if (x == 3)
            return;
        if (x == z)
            c(x, z);
    }
    function d(uint x, uint y, uint z) public pure {
        if (x == 3)
            c(y, z);
    }
}
contract SemanticsUnequalXulContract {
    constructor () {
    }
    function d() public {
        uint x = 4;
        uint y = x;
        uint z;
        c(x, y, z);
    }

    function e(uint x, uint y, uint z) public pure {
        if (x == 3)
            return;
    }
    function f() public {
        uint x = 42;
        uint y = x;
        uint z;
        c(x, y, z);
    }
    function c(uint x, uint y, uint z) public pure {
        if (x == 3)
            return;
        if (x == z)
            return;
    }
    function g(uint x) public {
        uint y = x;
        uint z;
        c(y, z);
    }

    function h(uint x, uint z) public pure {
        if (x == z)
            return;
    }
    function i(uint x) public {
        uint y = x;
        uint z;
        c(y, z);
    }
    function j(uint x, uint z) public pure {
        if (x == z)
            return;
    }
    function a(uint x, uint y, uint z) public pure {
        if (x == z)
            return;
  }
    function d(uint x, uint y, uint z) public pure {
        if (x == z) {
            c(x, y, z);
        }
    }
}
