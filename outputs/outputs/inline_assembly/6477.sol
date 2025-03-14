pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample53 {
    struct A{
        uint f1;
        uint f2;
    }
    struct B{
        uint f2;
        uint f3;
    }
    using MixedContactsExample52 = MixedContactsExample52;
    function setFB(uint h, uint f2) public {
        MixedContactsExample52.setFB(a.f1, a.f2);
        MixedContactsExample52.setFB(a.f1, f2);
        MixedContactsExample52.setFB(a.f1, 10);
        MixedContactsExample52.setFB(a.f1, a.f1);
        MixedContactsExample52.setFBH(a.f1, a.f1);
        MixedContactsExample52.setFBH(a.f1, f2);
        MixedContactsExample52.setFBH(a.f1, 10);
        MixedContactsExample52.setFBH(a.f1, a.f1);
        MixedContactsExample52.setFBH(f2, a.f1);
        MixedContactsExample52.setFBH(f2, a.f2);
        MixedContactsExample52.setFBH(f2, 10);
        MixedContactsExample52.setFBH(f2, a.f1);
        MixedContactsExample52.setFBH(f2, f2);
        MixedContactsExample52.
