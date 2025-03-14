pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample52 {
    struct A{
        uint f1;
        uint f2;
    }
    struct B{
        uint f2;
    }
    A a;
    B b;
    function setFBHF(uint hf, uint f1, uint f2) public {
        b.f2 = f2;
        a.f1 = f1;
        a.f1 = hf;
    }
    function getFBHF() public view returns(uint hf,uint f1,uint f2,uint h,uint h2) {
        h = a.f1;
        f1 = a.f1;
        f2 = b.f2;
        h2 = hf;
        h = a.f1;
    }
    function getFBHFC() public view returns(uint hf,uint256 h,uint f1,uint f2,uint hF,uint h2) {
        h = hf;
        h2 = a.f1;
        h = hf;
        s1 = a.f1;
        hF = s1;
        h = s1;
        h2 = a.f1;
    }
    function getFBFCF() public view returns(uint hf,uint f1,uint f2,uint hF,uint hF2) {
        hF = hf;
        hF2 = hf;
        h = hf;
        h2 = a.f1;
        h = hf;
        h2 = a.f1;
