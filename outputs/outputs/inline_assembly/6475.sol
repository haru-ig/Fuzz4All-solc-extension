pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample53 {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
        uint m;
        function modifyFB(uint i) public pure returns(uint) {
            return (a.f1 + i);
        }
    }
    A a;
    B b;
    function setFB( ) public {
        a.f1 = 99;
        a.f1 = a.f1 + 99;
        b.m = b.modifyFB(1);
    }
    function getFB( ) public view returns(uint f1,uint f1v) {
        return(a.f1,a.f1);
    }
    function getFBH( ) public view returns(uint h,uint hF,uint hF2,uint m,uint mF) {
        return(a.f1,a.f1,a.f1,a.f1,a.m);
    }
    function getFBFC( ) public view returns(uint h,uint hF,uint hF2,uint256,uint hF2v,uint m,uint mF) {
        return(a.f1,a.f1,a.f1,a.f1,a.f1,a.m,a.m);
    }
}

/* ================          ================
