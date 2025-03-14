pragma solidity ^0.8.0;
contract MixedContactsExample50Mutated {
    struct A{
        uint f1;
        uint256 f2;
    }
    struct B{
        uint f2;
        uint32 f3;
    }
    function setFB(uint h, uint f2) public {
        b.f2 = f2;
        a.f1 = h;
        a.f1 = h;
    }
    function getFB() public view returns(uint256 h,uint256 f2) {
        h = a.f1;
        f2 = b.f2;
    }
    function getFBH() public view returns(uint256 h,uint f2,uint256 f1) {
        h = a.f1;
        f2 = b.f2;
        f1 = a.f1;
    }
    function setFC(uint h, uint f1, uint f2) public {
        b.f2 = f2;
        a.f1 = h;
        a.f2 = h;
    }
    function getFC() public view returns(uint256 h,uint256 f1,uint256 f2) {
        h = a.f1;
        f1 = a.f1;
        f2 = b.f2;
    }
}
/* Please create a mainnet version of the program that mimics the previous generation - please don't forget to create an account with funds!
This task may take some time to complete (1500 SOL should be more) as you are responsible for ensuring that the address you use meets the requirements for this assignment (
