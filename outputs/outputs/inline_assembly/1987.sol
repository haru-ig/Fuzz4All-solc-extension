pragma solidity ^0.8.0;
contract NewY4 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x + 1;
        b[y] =  x + a[x] + x*(y*x/x);
        b[x2] = x + a[x];
        x2 = x + a[x2] + x;
        a[x] = a[y] + x;
        b[y] = x + x2 + x + x*x;
        a[x] = x;
    }
    function sub1(uint256 xN, uint256 x) public{
        uint256 x2N = x ^ xN;
