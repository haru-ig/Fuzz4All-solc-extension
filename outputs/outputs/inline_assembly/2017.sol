pragma solidity ^0.8.0;
contract NewY3 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        uint256 x2_2 = x * y;
        a[x] = x + 10 + 1;
        b[y] = x + x2;
        a[y] = x + x2;
        b[x2] = x2_2 + x2_2 + x2_2;
        a[x2] = x;
        b[x2 + x2_2] = x2_2 + x2_2 + x2_2 + x;
