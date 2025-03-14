pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample67_ {
    struct A {
        uint256 f1;
    }
    A a;
    uint x2 = 2;
    uint x3 = 3;
    function setFF(uint h, uint f2) public {
        a.f1 = 1 + h;
        uint tmp = (uint)uint256(h);
        a.f1 = (h + f2);
        a.f1 = ((tmp*5) + (x3*f2));
        a.f1 = ((h * f2) + (x3 * x2) + 55);
        uint f3 = a.f1;
        a.f1 = (f2 + (x2 * 500));
        a.f1 = ((f2 * x2)+ x3+200);
        uint f4 = a.f1;
    }
}
