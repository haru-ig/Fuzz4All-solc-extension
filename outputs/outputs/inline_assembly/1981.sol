pragma solidity ^0.8.0;
contract NewY4 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    constructor () {a[0xf25050e998f199161253881b9e2b112f78587d93] = 0xf25050e998f199161253881b9e2b112f78587d93;
    }
    function add(uint256 x, uint256 y) public{
        uint256 y2 = y ^ y;
        a[x] = x;
        b[y] = x + y + y;
        uint256 x2 = x ^ x;
        b[x2] = x
