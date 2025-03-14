pragma solidity ^0.8.0;
contract OldY{
    constructor()public{
        a = 0;
        b = 0;
    }
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x + y;
        a[x] = x;
        b[y] = x + 5;
    }
    function sub(uint256 x, uint256 y) public{
        uint256 x2 = x + y;
        a[x] = x + 1;
        b[y] = (x + 1) + x - x2;
    }
    function div(uint256 x, uint256 y) public{
        uint256 x2 = x;
        uint256 x
