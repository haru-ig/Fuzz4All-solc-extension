pragma solidity ^0.8.0;
contract C {
    struct MemoryLayout { uint256 _array; uint256 _arrayOf; uint256 _nestedArray; uint256[2] _arrayOf2UInt; };
    struct MemoryLayout memory _storageLayout;
    uint256[2] public _storage = [0, 0];
    uint256 public _array; uint256[1] public _nestedArray; uint256[1][4] public _arrayOfNested;
    bytes32[2] public _arrayOf;
    address[2] public _arrayOfAddresses;
    address[1] public _arrayOfAddresses; uint16[2] public _arrayOf2UInt = [251, 249];
    uint8[2] public _arrayOfUInt8 = [251, 249]; uint16[4] public _arrayOf2UInt16 = [251, 249, 2, 2]; uint16[2][2] public _arrayOf2UIntWithOverflow = [[251, 249], [11, 501]]; MemoryLayout memory _storageLayout = MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(0, 0, 0, 0, MemoryLayout(
