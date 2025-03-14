pragma solidity ^0.8.0;
contract newY4{
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function add1111(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x + 5;
        b[y] = x + x2;
        x2 = x + 2^9223372036854775808;
        a[y] = x + x2;
        b[y] = x2+ a[y] + 2^9223372036854775808 + x2 + x;
    }
    function add2222(uint256 x, uint256 y) public{
        uint
