pragma solidity ^0.8.0;

contract Mutated
{
    mapping(bytes2 => bytes2) public mapping1;
    mapping(address => address) public mapping2;
    mapping(uint256 => uint256) public mapping3;
    mapping(bytes3 => bytes3) public mapping4;
    mapping(uint32 => int16) public mapping5;
    mapping(uint31 => uint16) public mapping6;
    mapping(bytes8 => bytes8) public mapping7;

    bytes2 public map_key;
    bytes2 public map2_key;
    bytes2 public map_return_key;
    int16 public int16_key;

    bytes2 public map_return_bytes2_key;
    bytes2 public map2_return_bytes2_key;
    bytes2 public map_return_bytes2_bytes2_key;
    int16 public int16_return_key;

    bytes2 public test_map_key;
    bytes2 public test_map_key2;
    bytes2 public test_map2_key;
    int16 public test_int16_key;
}
