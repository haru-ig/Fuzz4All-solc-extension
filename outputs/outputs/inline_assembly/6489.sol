pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample54 {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    constructor(uint _f2) public {
        a.f1 = 0;
        a.f1 = _f2;
        a.f1 = 0;
        uint f2v = a.f1;
        a.f1 = _f2;
    }
    function getFB( ) public view returns(uint h,uint f1) {
        return(a.f1,a.f1);
    }
    function getFBH( ) public view returns(uint h,uint f1) {
        return(a.f1,a.f1);
    }
    function setFB(uint f) public returns(uint f1) {
        a.f1 = f;
        a.f1 = f;
        uint f1v = a.f1;
        a.f1 = f;
    }
    function setFBH(uint h, uint f2) public returns(uint f1) {
        a.f1 = h;
        a.f1 = h;
        uint f1v = a.f1;
        a.f1 = h;
    }
    function setFBH(uint h, uint hF, uint256 f1) public returns(uint) {
        a.f1 = h;
        a.f1 = h;
        uint f1v = a.f1;
        a.f1 = h;
    }
}
