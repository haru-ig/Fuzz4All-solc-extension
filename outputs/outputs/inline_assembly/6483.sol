pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample53 {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    A a;
    function setFB(uint h, uint f2) public {
        a.f1 = h;
        a.f1 = h;
        uint f1v = a.f1;
        a.f1 = h;
    }
    function getFB( ) public view returns(uint h,uint f1) {
        return(a.f1,a.f1);
    }
    function setFBH(uint h, uint f2) public {
        a.f1 = h;
        a.f1 = h;
        uint f1v = a.f1;
        a.f1 = h;
    }
    function getFBH( ) public view returns(uint h,uint hF,uint256 f1) {
        return(a.f1,a.f1,a.f1);
    }
}
