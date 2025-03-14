pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract MixedContactsExample50 {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    A a;
    uint c;
    B b;
    function setFB(uint h, uint f2) public {
        b.f2 = f2;
        a.f1 = h;
    }
    function readFB() public view returns(uint256 h,uint256 f2) {

        h = a.f1;
        f2 = b.f2;
    }
    function calFB2() public view returns(uint256 h,uint256 f2) {
        uint f_tmp;

        h = a.f1;
        f2 = 0;

        f_tmp = a.f1;
        f2 += f_tmp;

    }
    function getFB() public view returns(uint256 h,uint256 f2,uint256 f1) {
        h = a.f1
