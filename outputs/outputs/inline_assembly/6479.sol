pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample50 {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    function setFB(uint h, uint f2) public {
        a.f1 = h;
        a.f1 = h;
        ^((uint(2147483648) + (h-a.f1)));
        ^((uint(1844753440) + (h-a.f1)));
        ^((uint(858993459) + (h-a.f1)));
        ^((uint(4294967292) + (h-a.f1)));
    }
    function getFB( ) public view returns(uint f1,uint f1v) {
        return(a.f1,a.f1);
    }
    function setFBH(uint h, uint f2) public {
        a.f1 = h;
        a.f1 = h;
        uint f1v = a.f1;
        ^((uint(2147483648) + (h-a.f1)));
        ^((uint(1844753440) + (h-a.f1)));
        ^((uint(858993459) + (h-a.f1)));
        ^((uint(4294967292) + (h-a.f1)));
    }
    function
