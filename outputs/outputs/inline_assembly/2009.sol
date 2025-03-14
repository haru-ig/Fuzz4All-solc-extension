pragma solidity ^0.8.0;
contract NewY4 {
    mapping(uint256 => uint256) public a;
    uint256 public a_2 = 100;
    mapping(uint256 => mapping(uint256 => uint256)) public b;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        uint256 x2_2 = 2 * x;
        b[x][y][x] = x + 10;
        b[y][x][x2] = x + x2 - 1;
        b[x][y][x2] = x + x2_2;
        b[x][y][x] = x2_2 + x2;
        x2 = x + 1;
        b[y][x][x2] = x + 5;
