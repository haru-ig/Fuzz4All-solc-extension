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
    function setFB(uint h, uint f2) public {
        a.f1 = h;
        a.f1 = h;
        a.f1 = 10;
        a.f1 = h;
    }
    function getFB( ) public view returns(uint f1,uint f1v) {
        return(a.f1,a.f1);
    }
    function setFBH(uint h, uint f2) public {
        a.f1 = h;
        a.f1 = h;
        uint f1v = a.f1;
        a.f1 = h;
    }
    function getFBH( ) public view returns(uint h,uint hF,uint hF2) {
        return(a.f1,a.f1,a.f1);
    }
    function getFBFC( ) public view returns(uint h,uint256,uint hF,uint256,uint hF2) {
        return(a.f1,a.f1,a.f1,a.f1,a.f1);
    }
}
