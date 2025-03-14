pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample51 {
    A a;
    B b;
    function setF1H(uint h, A a_) public {
        b.f2 = a_.f1;
        a.f1 = h;
    }
    function setF2H(uint256 h, B b_) public {
        b.f2 = b_.f2;
        a.f1 = h;
    }
    function getH() public view returns(uint256 h,uint256 f2) {
        h = a.f1;
        f2 = b.f2;
    }
    function setFB(uint h, uint f2) public {
        b.f2 = f2;
        a.f1 = h;
    }
    function getFB() public view returns(uint256 h,uint f2) {
        h = a.f1;
        f2 = b.f2;
    }
    function getFBH() public view returns(uint256,uint,uint f1) {
        h = a.f1;
        f2 = b.f2;
        f1 = a.f1;
    }
    function setFC(uint h, uint f1, uint f2) public {
        b.f2 = f2;
        a.f1 = h;
        a.f1 = h;
    }
    function getFC() public view returns(uint256 h,uint256 f1,uint256 f2) {
        h = a.f1;
        f1 = a.f1;
        f2 =
