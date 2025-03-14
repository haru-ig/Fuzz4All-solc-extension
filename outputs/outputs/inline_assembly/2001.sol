pragma solidity ^0.8.0;
contract NewY3 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    constructor() public {
        a[123] = 1000;
        a[0] = 1;
    }
    function add(uint256 x, uint256 y) public {
        uint256 x2 = x ^ x;
        a[x2] = x + y + 5000;
        a[0] = 1
