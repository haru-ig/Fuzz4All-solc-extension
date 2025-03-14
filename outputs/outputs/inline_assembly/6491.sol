pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample63 {

    struct A{
        uint256 f1;
    }
    struct B{
        uint256 f2;
    }
    A a;
    B b;
    function getFB(uint h) public view returns(uint fb, uint f1, uint f2) {
        return(h,a.f1,a.f2);
    }
}
