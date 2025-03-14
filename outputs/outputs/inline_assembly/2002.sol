pragma solidity ^0.8.0;
contract NewY3 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x << 6;
        a[x] = x;
        b[y] = 16*x - x*y - x2*x2 + 12;
        x2 = x*y * 5;
        a[y] = 4 * x;
        b[x2] = 4 * x + x*y - 18*x2 + x2*x2;
        x2 = 2*x + 14;
        a[x] = x + 101;
        b[x2] = 2*x2 + x*x - 3*x2
