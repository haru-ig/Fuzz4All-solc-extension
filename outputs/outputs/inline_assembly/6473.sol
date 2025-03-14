pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample55 {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    A a;
    function setFB(uint h, uint f2) public {
        uint _f1 = a.f1;
        a.f2 = 13;
        a.f1 = 8;
        a.f1 = _f1;
        a.f2 = _f1;
        a.f1 = 13;
    }
    function getFB( ) public view returns(uint f1,uint f1v) {
        return(a.f1,a.f2);
    }
    function setFBH(uint h, uint f2) public {
        A memory _a = a;
        A memory _temp = a;
        a.f1 = h;
        _a = _tmp;
        a.f1 = h;
    }
    function getFBH( ) public view returns(uint h,uint hF,uint hF2) {
        return(a.f1,a.f2,a.f2);
    }
    function getFBFC( ) public view returns(uint h,uint256,uint hF,uint256,uint hF2) {
        return(a.f1,a.f2,a.f2,a.f2,a.f2);
    }
}
