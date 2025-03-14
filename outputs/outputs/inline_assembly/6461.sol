pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample52 {
    struct A{
        uint h;
        uint f1;
    }
    struct B{
        uint h;
        uint f2;
    }
    A ca;
    B cb;
    function setCBH(uint h, uint f2) public {
        cb.f2 = f2;
        ca.h = h;
    }
    function getCBH() public view returns(uint256 h,uint f2) {
        h = ca.h;
        f2 = cb.f2;
    }
    function setHFC(uint f1, uint f2) public {
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
        cb.f2 = f2;
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
        ca.h = 0x0;
