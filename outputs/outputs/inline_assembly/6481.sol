pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample53{
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    A a;

    function setFBH(uint256 h1, uint256 h2, uint256 f) public {
        uint256 f1v = a.f1;
        a.f1 = h1;
        a.f1 = h1;
        uint h1f = a.f1;
        a.f1 = h1;
    }
    function getFBH( ) public view returns(uint256,uint256,uint256) {
        return(a.f1,a.f1,a.f1);
    }
    function setFBFC(uint256 h1, uint256 h2, uint256 f) public {
        uint256 f1v = a.f1;
        uint256 h1f = a.f1;
        a.f1 = h1;
        a.f1 = h1;
        uint256 h2fc = a.f1;
        a.f1 = h1;
    }
}
