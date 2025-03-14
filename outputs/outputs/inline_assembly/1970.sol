pragma solidity ^0.8.0;
contract NewY1 is NewY2 {
    uint256 public a;
    uint256 public x;
    uint256 public z;
    modifier onlyx{
        require(a==x);
        _;
    }
    constructor() public {
        a = x;
    }
    function y() public returns(uint) {
        uint a = 119;
        uint b = a+x2;
        a = a+x2;
        b = a+x2;
        a = a*a+a+x;
        b = a + x + x+x+x+x+x+a+12 + 8 + 2;
        require(b==a+(z).sub(x2).sub(x2).mul(uint(a*a))/x2.add(x2.add(x2)));
        return b;
    }
    function s3() public returns(uint) {
        uint a = x;
        uint b = a*a;
        b = a * b;
        b = a + b * a;
        b = a / a + a + b / (b - a);
        require(b==a);
        uint bS2 = b;
        uint y2 = y();
        bS2 = bS2 + y2;
        b = a;
        a = a-x;
        bS2 = bS2 + a;
        bS2= a + b * b;
        bS2 = bS2 / b + b;
        return bS2;
    }
    function s4() public returns(uint) {
        uint a = 119;
        a = a+x2;
        a = a + x2;
        a = a * a + a + x;
        a = a + x + x+x+x+x+x+a + 8 + 2;
        a = a*a+a+x;
        return a;
    }
    function s1() public returns (uint) {
        uint a = 119;
        a = a+x2;
        uint b = a+x2;
        a = a+x2;
        b = a+x2;
        a = a*a+a+x;
        b = a + x + x+x+x+x+x+a+12 + 8
