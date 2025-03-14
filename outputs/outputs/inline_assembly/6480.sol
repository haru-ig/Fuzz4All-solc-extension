pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample13 {
    struct A{
        uint f1;
        uint f2;
        uint f1v;
        uint h;
        uint hF;
        uint hF2;
    }
    struct B{
        uint f1v;
        uint hF2;
    }
    A a1v;
    B b1v;
    function setFB(uint h, uint f2) public {
        a1v.f1 = h;
        a1v.f2 = f2;
        a1v.f1v = h;
        a1v.h = h;
        a1v.hF = h;
        a1v.hF2 = h;
    }
    function getFB( ) public view returns(uint f1,uint f1v) {
        return(a1v.f1,a1v.f1v);
    }
    function setFBHHVVVVV(uint h, uint f2) public {
        a1v.f1 = h;
        a1v.f2 = f2;
        a1v.f1v = h;
        uint f1v = a1v.f1;
        a1v.f1 = h;
        a1v.f1v = h;
    }
    function getFBHHVVVVV( ) public view returns(uint h,uint hF,uint hF2) {
        return(a1v.f1,a1v.f1v,a1v.hF2);
    }
    function setFBVV(uint
