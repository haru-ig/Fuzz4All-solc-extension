pragma solidity ^0.8.0;
contract MutateProgram {
    uint a;
    struct B {
        uint x;
        uint y;
    }
    function f(B storage b2) public {
        uint x = uint(b2.x);
        b2.x /= 2;
        uint y = b2.x;
        b2.x = 3;
        B memory b1 = b2;
        uint z = b1.x;
        b2.y /= 2;
        uint w = b2.y;
        b1.x *= 3;
        uint x2 = b1.x;
        b1.x = b2.x;
    }
    function g() public { f(B(0,0)); }
}
