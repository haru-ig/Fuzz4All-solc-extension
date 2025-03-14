pragma solidity ^0.8.0;
contract OldY3{
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    constructor(){
        a.put(uint256(uint160(this)), uint256(uint160(this)));
        b.put(uint256(uint160(0x64)), uint256(uint160(0x64)));
    }
    function add(uint256 x, bytes32 y) public{
        uint256 x1 = bytes32(x);
        uint256 x2 = x1 ^ x1;
        a[x1] = uint256(x2);
        b[40] = 12 + x2 * bytes32(2) + x + x^x1;
        b[x2] =
