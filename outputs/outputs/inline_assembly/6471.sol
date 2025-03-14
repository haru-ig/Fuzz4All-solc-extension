pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample53 {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    A a;
    function setFB(uint h, uint f2) public{
        a.f1 = h;
        a.f1 = h;
        uint f1v = a.f1;
        a.f1 = h;
        uint f2v = f2;
        a.f1 = h;
    }
    function getFB( ) public view returns(uint h,uint f1,uint f1v) {
        return(a.f1,a.f1,a.f1);
    }
    function setFBH(uint h, uint f2) public {
        a.f1 = h;
        a.f1 = h;
        uint hF = a.f1;
        uint hF2 = f2;
        a.f1 = h;
    }
    function getFBH( ) public view returns(uint h,uint hF,uint hF2) {
        return(a.f1,a.f1,a.f1);
    }
    function getFBFC( ) public view returns(uint h,uint256,uint hF,uint256,uint hF2) {
        return(a.f1,a.f1,a.f1,a.f1,a.f1);
    }
}

interface ITest {
    function setF(uint256 test);
}
contract MutatedContactsExample5
