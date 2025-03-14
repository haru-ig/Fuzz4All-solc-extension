pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample39 {
    struct A{
        uint f1;
    }
    A a;
    function setF1(uint h) public {
        a.f1 = h;
    }
    function getF1() public view returns(uint h) {
        h = a.f1;
    }
    function getF1AndH() public view returns(uint256 h,uint f1) {
        h = a.f1;
        f1 = a.f1;
    }
}
