pragma solidity ^0.8.0;
contract NewY2 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function add(uint256 x, uint256 y) public view returns(uint256){
        uint256 x2 = x ^ x;
        uint256 x2_2 = 2 * x;
        uint256 a_1 = a[x];
        uint256 a_x = a[x + 1];
        uint256 a_2 = a[x2];
        uint256 a_21 = a[x2 + 2] + a[x2+1];
        uint256 a_4 = a[x + 3];
        uint256 a_8 = a[x2 + 4] + a[x2 + 3] +
