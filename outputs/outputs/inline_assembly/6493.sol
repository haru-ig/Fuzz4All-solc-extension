pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample110 {
    struct A{
        uint256 f1;
    }
    struct B{
        uint256 f2;
    }

    function setFB(uint h,uint f2) public {
        uint f1v = a.f1;
        uint f1 = a.f1;
        uint h = h;
    }
    function getFB( ) public view returns(uint h,uint f1) {
        uint f1 = a.f1;
        uint h = a.f1;
    }
    function removeFB( ) public view returns(uint h,uint f1) {
        removeFB1();
        return (a.f1,a.f1);
    }
    function removeFB1( ) public {
        uint h = a.f1;
        uint f1v = a.f1;
        uint f1 = a.f1;
    }
}
