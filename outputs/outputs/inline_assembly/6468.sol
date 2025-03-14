pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample52 {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    A a;
    B b;
    function setFB(uint h, uint f2) public {
        a.f1 = h;
        b.f1 = h;
        b.f2 = f2;
    }
    function getFB() public view returns(uint256 f1H,uint256 f1,uint f2,uint256 f2C) {
        f1H = a.f1;
        f1 = a.f1;
        f2 = b.f2;
        f2C = b.f2;
    }
    function setFBH(uint h, uint f2) public {
        b.f2 = f2;
        a.f1 = h;
        b.f2 = f2;
    }
    function getFBH() public view returns(uint256 f1,uint256 f1H,uint256 f2,uint256 f2C) {
        f1 = a.f1;
        f1H = a.f1;
        f2 = b.f2;
        f2C = b.f2;
    }
    function clearFBH() public {
        b.f2 = 0;
    }
    function clearFBFC() public {
        a.f1 = 0;
        b.f1 =
