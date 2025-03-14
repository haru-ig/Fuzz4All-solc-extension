pragma solidity ^0.8.0;
contract Y5 {
    mapping(uint256 => (uint256, uint256)) public a;
    mapping(uint256 => uint256) public b;
    function add(uint256 x, uint256 y) public{
        uint256 z;
        b[x] = x + y;
        b[y] = 3*x + 3-6;
        b[y] = 7 + ((y -1) * x + (y-1));
        x = 6 + 1;
        x = x + 6;
        a[x] = x - ((y -1) * x + x + x2);
        a[x] = x + ((y-1) * x) + x + x2;
        a[x] = z - ((y-1) * x+y+x) + 2*x;
