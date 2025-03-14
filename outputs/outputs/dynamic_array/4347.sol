pragma solidity ^0.8.0;

contract C
{
    uint256[0] public _storage;
    uint256[0] _array;
    uint256[1][] public _arrayOf;
    uint256[1][4] public _arrayOfNested;
    uint256[1] public _arrayOfAddresses;
    uint256[1][4] public _arrayOfAddressAndUInt;
    uint256[2] public _arrayOf2UInt;
}
assert(uint32(solidity.hash(abi.encodePacked(_arrayOf, _arrayOfNested, uint256((uint16[1]){}))) - (uint32)keccak256(abi.encodePacked(_arrayOf, _arrayOfNested, uint256((uint16[1]){})))) <= 40);
assert(uint32(solidity.hash(abi.encodePacked(_arrayOfAddresses, _arrayOfAddressAndUInt, uint256((uint16[2]){}), uint32(uint128((uint256){0x555555555555555555555555555555555555555555555555555555555555555})))) - (uint32)keccak256(abi.encodePacked(_arrayOfAddresses, _arrayOfAddressAndUInt, uint256((uint16[2]){}), uint32(uint128((uint256){0x555555555555555555555555555555555555555555555555555555555555555})))) <= 156);
assert(uint32(solidity.hash(abi.encodePacked(_arrayOf2UInt, uint256((uint16[2]){})))) - (uint32)keccak256(abi.encodePacked(_arrayOf2UInt, uint256((uint1
