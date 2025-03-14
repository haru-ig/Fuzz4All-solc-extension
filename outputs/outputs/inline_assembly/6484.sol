pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample53 {
    A a;
    function setFB(uint h, uint f2) public {
        a.f1 = h;
        a.f1 = h;
    }
    function getFB( ) public view returns(uint f1,uint f1v) {
        return(a.f1,a.f1);
    }
}
