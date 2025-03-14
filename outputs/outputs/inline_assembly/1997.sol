pragma solidity ^0.8.0;
contract NewY4 {
    mapping(uint256 => uint256) public a;
    mapping(address => uint256) public b;
    address[] a_mem;
    address[] b_mem;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x;
        a[x2] = x + 33;
        b[y] = a[x]*a[x2]*a[x2] + x;
    }
    function sub(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x + 1;
        a[x2] = x+x;
        b[y] = a[x]*a[x2] + a[x] + a[x]*
