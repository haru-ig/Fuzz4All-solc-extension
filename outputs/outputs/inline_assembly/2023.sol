pragma solidity ^0.8.0;
contract NewY4_5_6 {
    event Added(uint256 x, uint256 y);
    event Divided(uint256 x, uint256 y, uint256 z);
    event Muledi(uint256 x, uint256 y, uint256 z);

    constructor () {
        emit Added(1, 2);
        emit Divided(7, 4, 11);
        emit Muledi(3, 4, 5);
    }
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function add(uint256 _one, uint256 _two) public{
        uint256 x = _one * 3 + _two;
        a[x] = _one + 1;
        b[x] =
