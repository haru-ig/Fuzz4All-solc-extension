pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample39 {
    struct A{
        uint256 f1;
    }
    A a;
    function setF1(uint h) public {
        a.f1 = h;
    }
    function getF1() public view returns(uint256 h) {
        h = a.f1;
    }
    function getF1AndH() public view returns(uint f1,uint h) {
        f1 = a.f1;
        h = a.f1;
    }
}
