pragma solidity ^0.8.0;
contract NewY4 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x;
        b[y] = x + 1;
        a[x2] = x;
        b[x2] = x + 3;
        a[x] = x + 100;
        b[x2_2] = x + x + 1;
        a[x] = x + 1;
        b[x] = x + x + 1;
    }
    function sub(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x +
