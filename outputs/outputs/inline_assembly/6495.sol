pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample55 {
    struct A{
        uint256 f1;
    }
    struct B{
        uint256 f2;
    }
    A a;
    function setFB(uint h, uint f2) public {
        a.f1 = h;
        uint f1v = a.f1;
        a.f1 = h;
        a.f1 = (h * f2);
        uint f1f = a.f1;
    }
    function getFB( ) public view returns(uint h,uint f2) {
        return(a.f1,a.f1);
    }
}
