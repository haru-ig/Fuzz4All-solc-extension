pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample53 {
    struct B{
        uint256 f1;
    }
    A a;
    B b;
    function setF(uint256 f) public {
        a.f1 = 10;
    }
    function getF(uint256 v) public view returns (uint256) {
        uint256 f = (a.f1 + v) - (a.f1);
        return (a.f1) + f;
    }
    function setFF(uint256 h, uint256 f2) public {
        uint256 v = (a.f1 + h) - (a.f1);
        a.f1 = (a.f1) + h;
        a.f1 = (a.f1) + v;
        b.f1 = h;
        b.f1 = v;
        a.f1 = (a.f1) - (b.f1 + h);
    }
    function getFF(uint256 h, uint256 f2) public view returns (uint256) {
        uint256 v = (a.f1 + h) - (a.f1);
        uint256 f = (a.f1) + v;
        return (a.f1) - ((a.f1) + ((f2) - v) - (h + (a.f1) + v+a.f1)));
    }
    function setFBHL(uint256
