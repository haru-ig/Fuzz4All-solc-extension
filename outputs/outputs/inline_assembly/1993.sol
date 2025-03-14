pragma solidity ^0.8.0;
struct NewY34 {
    mapping(bytes32 => uint256) public a;
    mapping(bytes32 => uint256) public b;
    function add (bytes32 r, uint256 y) public{
        bytes32 r2 = r + r;
        a[r] = 1;
        b[y] = r + 12;
        b[r2] = r + y;
    }
    function sub(bytes32 r, uint256 y) public{
        bytes32 s = r + r;
        bytes32 r2 = r + r;
        a[r] = r+1;
        b[y] = r + s + 12;
        b[r2] = r2 + s + y;
    }
    function div(bytes32 r, uint256 y) public{
        bytes32 s = r +
