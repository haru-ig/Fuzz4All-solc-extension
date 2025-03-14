pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample51 {
    struct A{
        uint f4;
    }
    struct B{
        uint f1;
        uint f2;
    }
    A a;
    B b;
    function setFB(uint f1,uint f2) public {
        b.f2 = f2;
        a.f1 = f1;
    }
    function setFC(uint h, uint f1,uint f2) public {
        b.f2 = f2;
        a.f1 = h;
    }
    function getFB() public view returns(uint256 h,uint f2) {
        h = a.f1;
        f2 = b.f2;
    }
    function getFC() public view returns(uint256 h,uint f1,uint256 f2) {
        h = a.f1;
        f1 = a.f1;
        f2 = b.f2;
    }
}
