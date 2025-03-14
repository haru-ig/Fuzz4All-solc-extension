pragma solidity ^0.8.0;
contract OldY2 {
    mapping(uint256 => mapping(uint256 => uint256)) public a;
    mapping(uint256 => bytes32) public b;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        address addr1 = new address(this);
        bytes32 hash1 = keccak256(abi.encode(addr1, new uint8(52)));
        bytes32 hash3 = keccak256(abi.encode(addr1, 11));
        bytes32 hash4 = keccak256(abi.encode(a, new bytes32(0), 63));
        a[x][2 * x2] = keccak256(abi.encodePacked(hash1, hash2));
        b[x]
