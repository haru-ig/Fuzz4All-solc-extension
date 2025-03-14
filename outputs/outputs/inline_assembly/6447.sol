pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample50Mutated {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    A a;
    B b;
    function setFB(uint h, uint f2) public {
       b.f2 = h;
       a.f1 = f2;
    }
    function getFB() public view returns(uint256 f1) {
       return a.f1;
    }
    function getFBH() public view returns(uint256 h,uint256 f2,uint f1) {
       return a.f1, f2, a.f1;
    }
    function setFC(uint h, uint f1, uint f2) public {
       b.f2 = h;
       a.f1 = f2;
       uint  _1 = a.f1;
       a.f1 = h;
       _1;
   }
   function getFC() public view returns(uint256,uint256,uint256 f2, uint256) {
       a.f1 = f1.value;
       return a.f1,b.f2,_1, a.f1;
    }
    function getFC2() public view returns(uint256, uint256, uint256 f1, uint256) {
       a.f1 = f1.value;
       a.f1 = f1.value;
       a.f1 = f1.value;
       a.f1;
       return a.f1, a.f1
