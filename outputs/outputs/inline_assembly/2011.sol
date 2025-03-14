pragma solidity ^0.8.0;
contract NewY3 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    constructor() public {
        a[1] = 1;
        a[a[1]] = 50;
        a[1] = 20/2;
        b[5] = a[1]*x + x+x+x;
        b[5] = a[1]*x;
        b[a[1]] = x;
        b[x] = x + a[x]*x2 + a[1]+7;
    }
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        b[x] = x + 5;
        b[y] = x + x2*3 + x2*y + x2 +
