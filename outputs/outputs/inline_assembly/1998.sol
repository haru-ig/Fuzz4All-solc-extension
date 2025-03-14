pragma solidity ^0.8.0;
contract NewY3 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256[]) public b;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        uint256 y2 = y ^ y;
        a[x] = x;
        uint256[] memory ary = new uint256[](2);
        ary[0] = x+y;
        ary[1] = x+x+45;
        b[x2][0] = ary;
        b[x2][1] = a[x] + x2 + 32 +  x*x;
    }
    function sub(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
