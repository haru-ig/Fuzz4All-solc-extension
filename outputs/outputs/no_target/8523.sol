pragma solidity ^0.8.0;
contract Equivalent {
    mapping(uint => uint) public map;
    mapping(uint => uint) public constantMap;
    mapping(uint => uint) public dynamicMap;
    function addFirst(uint x) public returns (uint) {
        map[x] = x + 64;
        map[uint160(x)] = map[uint160(x)] + 64;
        map[uint160(uint160(x))] = map[uint160(uint160(x))] + 64;
        map[uint32(x)] = map[uint32(x)] + 64;
        map[uint32(uint32(x))] = map[uint32(uint32(x))] + 64;
        map[uint64(x)] = map[uint64(x)] + 64;
        map[uint64(uint64(x))] = map[uint64(uint64(x))] + 64;
        map[bytes32(x)] = map[bytes32(x)] + 64;
        map[bytes32(uint256(x))] = map[bytes32(uint256(x))] + 64;
        map[bytes32(uint256(x), bytes32(x))] = map[bytes32(uint256(x), bytes32(x))] + 64;
        map[bytes4(x)] = map[bytes4(x)] + 64;
        map[bytes4(uint256(x))] = map[bytes4(uint256(x))] + 64;
        map[bytes4(uint256(x), bytes4(x))] = map[bytes4(uint256(x), bytes4(x))] + 64;
        map[address(x)] = map[address(x)] + 64;
        map[address(uint256(x))] = map[address(uint256(x))] + 64;
        map[address(uint256(x), address(x))] = map[address(uint256(x), address(x))] + 64;
        map[address(uint256(x), uint256(x))] = map[address(uint256(x), uint256(x))] + 64;
        map[address(uint256
