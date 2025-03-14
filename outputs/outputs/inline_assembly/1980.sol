pragma solidity ^0.8.0;
contract OldY2 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x + y + 2;
        b[y * 2] = x + y + 3;
        b[x + x2] = x * 2 + y;
    }
    function sub(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x + 15;
        b[y] = x + x2;
        x2 = x + 1;
        a[y] = x + 8;
        b[y + 1] = y + y +
