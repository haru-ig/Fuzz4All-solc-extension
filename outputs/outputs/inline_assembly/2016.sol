pragma solidity ^0.8.0;
contract Y4 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    constructor() public {
        a.set(0, uint256[2] (7,100));
        b.set(0, uint256[2] (7,900));
    }
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x;
        b[y] = x + 12;
        b[x2] = x + y;
    }
}
