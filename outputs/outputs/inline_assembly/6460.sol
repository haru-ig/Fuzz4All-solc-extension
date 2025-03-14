pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample52 {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    uint256 h;
    uint256 f1;
    uint256 f2;
    function __init() public {
        h = 1;
        f1 = 2;
        f2 = 3;
    }
    function setFB() public {
        h = 4;
        f1 = 5;
        f2 = 6;
    }
    function getFB() public view returns (uint256) {
        h = 7;
        f1 = 8;
        f2 = 9;
        return h;
    }
    function setFBH() public {
        h = 10;
        f1 = 11;
        f2 = 12;
    }
    function getFBH() public view returns (uint256, uint256) {
        h = 13;
        f1 = 14;
        f2 = 15;
        return (h,f1);
    }
    function getFBFC() public view returns (uint256, uint256, uint256, uint256, uint256) {
        h = 16;
        f1 = 17;
        f2 = 18;
        hF = 19;
        hF2 = 20;
        return (h,f1,
