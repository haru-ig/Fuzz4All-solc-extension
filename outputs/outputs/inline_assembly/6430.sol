pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample38 {
    struct A{
        uint f1;
    }
    uint f1x;
    A a;
    function setF1x(uint h) public {
        a.f1 = h;
    }
    function getF1x() public view returns(uint h) {
        h = a.f1;
    }
    function getF1xAndF1(uint f1xIn) public view returns(uint h,uint f1) {
        h = a.f1;
        f1 = a.f1;
    }
}
