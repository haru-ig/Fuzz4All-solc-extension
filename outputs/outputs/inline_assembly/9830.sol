pragma solidity ^0.8.0;
contract ChangeSemanticsXulContract {
    constructor () {
    }
    function e() public {
        a();
    }
    function a() public {
        b();
    }
    function b() public {
        c();
    }
    function c() public {
    }
}
contract ChangeSemanticsUnequalXulContract {
    constructor () {
    }
    function f() public {
        uint x = 10;
        uint y = x;
        uint z;
        g(x, y, z);
    }
    function g(uint x, uint y, uint z) public pure {
        if (x == y)
            return;
    }
}
