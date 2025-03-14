pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample51 {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }


    mapping(uint256=>B) v;
    A a;
    B b;


    function setFB(uint h, uint f2) public {
        b.f2 = f2;
        a.f1 = h;
    }
    function getFB() public view {
        B f = v[h];
        h = a.f1;
        f2 = b.f2;
    }
    function setFBH(uint h, uint f2) public {
        b.f2 = f2;
        a.f1 = h;
        a.f1 = h;
    }
    function getFBH() public view returns(uint256 h, uint256 f2,uint f1) {
        uint256 bfb;
        B f = v[h];
        B f1;
        h = a.f1;
        f2 = b.f2;
        f1 = a.f1;

        bfb=1;

        bfb=1;

        return(h, f2, f1);
    }
    function getFBFC() public view returns(uint256 h,uint256 f1,uint256 f2,uint hF,uint hF2) {
        uint256 bfb;
        B f1;
        B f2;
        B hF
