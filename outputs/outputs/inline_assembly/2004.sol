pragma solidity ^0.8.0;
contract NewY4 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function sub3(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        uint256 x2_2 = 2 * x;
        a[x] = x + 10;
        b[x2_2] = x + x2;
        a[x2_2] = x + x2;
        b[x2] = x;
        a[x2] = x+y;
        b[x2] = b[x2]*x2_2 + x + y;
    }
    function add4(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        uint25
