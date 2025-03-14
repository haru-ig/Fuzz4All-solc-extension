pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample51 {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    A a;
    B b;
    function setFB(uint h) public {
        a.f1 = h;
        b.f1 = h;
        b.f1 = h;
        b.f1 = h;
    }
    function getFB() public view returns(uint256 f1) {
        f1 = a.f1;
        f1 = a.f1;
        f1 = a.f1;
        f1 = a.f1;
        f1 = a.f1;
        f1 = a.f1;
        f1 = a.f1;
    }
    function getFBH() public view returns(uint256 h,uint256 f1) {
        h = a.f1;
        f1 = a.f1;
    }
    function setFC(uint h, uint f1, uint f2) public {
        a.f1 = h;
        b.f1 = h;
        b.f1 = h;
        b.f2 = f2;
        b.f1 = h;
        b.f1 = h;
    }
    function getFC() public view returns(uint256 f1,uint256 f2,uint256 f,uint256,uint256 m) {
        f = b.f1;
        f1 = a.f1;
        f2 = b.f2;
        f3 = 2;
