pragma solidity ^0.8.0;
contract MixedContactsExample51 {
    struct A{
        uint h;
    }
    struct B{
        uint f1;
    }
    A a;
    B b;
    function setH(uint h, uint h2) public {
        a.h = h;
        b.f1 = h;
    }
    function getH() public view returns(uint h) {
        h = a.h;
    }
    function getHF() public view returns(uint h, uint f1, uint f2) {
        h = a.h;
        f1 = b.f1;
        f2 = a.h;
    }
    function setF(uint h, uint f1, uint f2) public {
        a.h = h;
        a.h = h;
        b.f2 = f2;
        b.f1 = f1;
    }
    function getF() public view returns(uint h,uint256 f1,uint256 f2) {
        h = a.h;
        f1 = a.h;
        f2 = b.f2;
    }
}
