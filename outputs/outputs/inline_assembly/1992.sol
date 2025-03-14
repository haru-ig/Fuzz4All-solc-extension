pragma solidity ^0.8.0;
contract NewY4 {
    uint256 public c;
    uint256 public d;
    uint256 public a;
    uint256 public b;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a = x;
        b = x + 5;
        c = x + x2;
        d = x + y;
        c = x + c + x + d + d;
        b = x + b + x * x + x2;
    }
    function sub(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        uint256 x2_2 = 2 * x;
        a = x + 4;
        b = x2_2 + x2;
        c = x + x2;
        d = x +
