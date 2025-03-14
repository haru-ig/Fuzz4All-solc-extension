pragma solidity ^0.8.0;
contract NewY3 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x; a[x] = x + 432 * y + x2+12372 * x2;
        b[y] = x + 13372 + a[x] + x;
    }
    function sub(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x; a[x] = 45 * x + x2+68 * x2;
        b[y] = - 54 * x + x + x2;
        a[x] = x + x;
        b[y] -=
