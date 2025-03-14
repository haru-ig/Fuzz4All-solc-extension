pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample60 {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    A memory a;
    B memory b;
    address sender;

    modifier onlyMe { require(msg.sender == sender); _; }
    constructor(uint h, uint f1, uint f2) public {
        a.f1 = h; b.f2 = f2; sender = msg.sender;
        a.f1 = h; b.f2 = f2; a.f1 = h;
    }
    function modify() public {
        a.f1 = sender;
        b.f2 = sender;
    }

    function setFB(uint h, uint f2) public onlyMe {
        b.f2 = f2;
        sender = msg.sender;
        a.f1 = h;
        sender = msg.sender;
        a.f1 = h;
    }
    function getFB() public view returns(uint256 h,uint f2) {
        h = a.f1;
        f2 = b.f2;
    }
    function getFBH() public view returns(uint256 h,uint256 f2) {
        h = a.f1;
        f2 = b.f2;
        uint f1 = a.f1;
    }
    function setFC(uint h, uint f1, uint f2) public onlyMe {
        b.f2 = f2;
        sender = msg.sender;
        a.f1 = h;
        sender = msg.
