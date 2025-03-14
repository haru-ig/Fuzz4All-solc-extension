pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample68 {
    struct A {
        uint256 f1;
        uint256 f2;
    }
    A a;
    function setFB(uint h, uint f2) public {
        a.f1 = h;
        uint f1v = a.f1;
        a.f1 = (h * f2);
        uint f1f = a.f1;
        a.f1 = h;
        a.f1 = h;
        uint f1fv = a.f1;
    }
}
