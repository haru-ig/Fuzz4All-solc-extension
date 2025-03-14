pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample52 {
    struct A{
        uint256 _f;
    }
    struct B{
        uint256 _f;
    }
    A a;
    B b;
    function setFB(uint256 h, uint256 f2) public {
        b.f = h;
        a.f = h;
    }
    function getFB() public view returns(uint256 h,uint256 f) {
        h = a.f;
        f = b.f;
    }
    function setFBH(uint256 h, uint256 f2) public {
        b.f = h;
        a.f = h;
        a.f = h;
    }
    function getFBH() public view returns(uint256 h,uint256 f,uint256 f2) {
        h = a.f;
        f = b.f;
        f2 = a.f;
    }
    function getFBFC() public view returns(uint256 h,uint256 f,uint256 hF,uint256 hF2) {
        h = a.f;
        f = b.f;
        hF = a.f;
        hF2 = a.f;
    }
}
