pragma solidity ^0.8.0;
contract NewY4 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x;
        b[y] = x + 12;
        b[x2] = x + y;
    }
    function sub(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x + 5;
        b[y] = x + x2;
        x2 = x + 1;
        a[y] = x + 4;
    }
    function div(uint256 x, uint256 y) public{
        uint256 x2 = x
