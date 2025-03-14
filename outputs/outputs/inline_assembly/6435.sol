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
        b.f2 = 2;
        b.f2 = 3;
        b.f2 = 2;
    }
    function getFB() public view returns(uint256 h) {
        h = a.f1;
    }
    function getFBH() public view returns(uint256 h,uint256 f,uint1 f1,uint2 f2) {
        h = a.f1;
        f = b.f2;
        f1 = a.f1;
        f2 = b.f2;
    }
    function setFC(uint h, uint f) public {
        uint2 f2;
        a.f1 = h;
        a.f1 = h;
        a.f1 = h;
        b.f2 = f;
        b.f2 = f2;
    }
    function getFC() public view returns(uint256 h,uint256 f1,uint256 f,uint256 f2) {
        h = a.f1;
        f1 = a.f1;
        f = b.f2;
        f2 = b.f2;
    }
}
