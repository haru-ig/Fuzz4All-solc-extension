pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample50 {
    struct A{
        uint f1;
    }
    B b;
    A a;
    function setFB(uint h, uint f2) public {
        b.f2 = f2;
        a.f1 = h;
    }
    function getFB() public view returns(uint h,uint f1,uint f2){
        h = a.f1;
        a.f1 = h;
        f1 = a.f1;
        f2 = b.f2;
    }
    function getFBH() public view returns(uint,uint256){
        uint a = a.f1;
        uint h;
        h = a;
        a = a;
        return (h,a);
    }
    function setFC(uint h, uint f2) public {
        b.f2 = f2;
        a.f1 = h;
        a.f2 = f1;
    }
    function getFC() public view returns(uint,uint256,uint256){
        uint a = a.f1;
        uint h;
        h = a;
        a = a;
        a = a;
        return (h,a,a);
    }
    function getFCH() public view returns(uint,uint256,uint){
        uint a = a.f1;
        uint h;
        a = a;
        a = a;
        return (h,a,a);
    }
}
