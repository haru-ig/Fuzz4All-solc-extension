pragma solidity ^0.8.0;
contract NewY3 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    mapping(uint256 => uint256) public c;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x + 1;
        b[y] = x + 10;
        c[x] = x + 100;
        c[x2] = x + y;
    }
    function sub(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x + 1;
        b[y] = x + x2;
        c[x] = x + 10;
        c[x2
