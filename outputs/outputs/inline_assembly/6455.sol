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
    function setFB(uint h,uint f2) public {
        b.f2 = f2;
        a.f1 = h;
    }
    function getFB() public view returns(uint256 h,uint f2) {
        h = a.f1;
        f2 = b.f2;
    }
    function getFBH(uint h) public view returns(uint256 h2,uint hF) {
        hF = a.f1;
    }
    function getFBH2(uint h) public view returns(uint256 h,uint f2) {
        h = a.f1;
        f2 = b.f2;
    }
}
