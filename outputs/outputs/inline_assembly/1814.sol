pragma solidity ^0.8.0;
contract Example{
    uint256 public x;
    uint32 public x1;
    uint64 public x2;
    uint128 public x3;
    mapping(uint256 => uint256, uint32 => uint32, uint64 => uint64, uint128 => uint128) public mapping1;
    mapping(uint256 => uint256) public mapping2;
    mapping(uint256 => uint256) public mapping3;
    mapping(bytes32 => bytes32) public mapping4;
    mapping(uint256 => uint256) public mapping5;
    mapping(uint256 => uint256) public mapping6;
    function set(uint256 _x, uint32 _x1, uint64 _x2, uint128 _x3, mapping(uint256 => uint256, uint32 => uint32, uint64 => uint64, uint128 => uint128) memory _mapping1, mapping(uint256 => uint256, uint32 => uint32, bytes32 => bytes32, uint64 => uint64, uint128 => uint128) memory _mapping2, mapping(uint256 => uint256, uint32 => uint32, bytes32 => bytes32, uint64 => uint64) memory _mapping3, mapping(uint256 => uint256, uint32 => uint32) memory _mapping4, mapping(uint256 => uint256) memory _mapping5, mapping(uint256 => uint256) memory _mapping6) public {
        x = _x;
        x1 = _x1;
        x2 = _x2;
        x3 = _x3;
        mapping1 = _mapping1;
        mapping2 = _mapping2;
        mapping3 = _mapping3;
        mapping4 = _mapping4;
        mapping5 = _mapping5;
        mapping6 = _mapping6;
    }
}
