pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample51 {
    struct A {
        uint f1;
    }
    struct B {
        uint f2;
    }
    A a;
    B b;
    uint f12;
    uint f23;
    uint f34;
    uint f12h;
    uint f23h;
    uint f34h;
    uint h12;
    uint h23;
    uint h34;
    uint h12f;
    uint h23f;
    uint h34f;

    function setFB(uint h, uint f2) public {
        f23 = b.f2;
        f13 = b.f1;
        f12 = a.f1;
        b.f2 = f2;
        a.f1 = h;
        a.f1 = h;
    }
    function getFB(uint h) public view returns(bool, uint256, uint256, uint256, uint256, uint256) {
        bool ok;
        uint k;
        uint256 hA = a.f1;
        uint256 fB = b.f1;
        ok = (a.f1 == h);
        h12 = a.f1;
        h23 = a.f1;
        h34 = a.f1;
        ok = (ok && (h == hA));
        ok = (ok && (fB
