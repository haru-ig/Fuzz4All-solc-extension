pragma solidity ^0.8.0;
contract NewY3 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function add(uint256 x, uint256 y) public{
        b[y] = x + 12;
        x += x;
        b[x] = 0x12;
        a[0x12] = 0x12;
        b[0x12] = 0x12 + 0xb;
        a[x] = 0xb;
        b[x] = x + 4;
        a[b[y]] = 0xb;
        x += 4;

        b[y] = 0xb2 + 0x2b2;
        x += 0x32;

        b[y] = 0xb2;
        x += 0x
