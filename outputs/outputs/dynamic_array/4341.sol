pragma solidity ^0.8.0;
contract C {
    uint256[2] public _storage = [0, 0];
    uint256 public _array;
    uint256[1] public _nestedArray; uint256[1][4] public _arrayOfNested1; uint256[1][4] public _arrayOfNested2;
    address[2] public _arrayOf;
    address[] public _arrayOfAddresses;
    address[1][4] public _arrayOfAddressAndUInt1;
    address[1][4] public _arrayOfAddressAndUInt2;
    uint16[2] public _arrayOf16UInt; uint16[2] public _arrayOf16UInt1; uint16[2] public _arrayOf16UInt2;
}

pragma solidity ^0.8.0;
contract C {
    uint public _storage;
    uint public _array;
    bool public _bool; uint public _uint; uint8 public _uint8; uint16 public _uint16; uint32 public _uint32; uint64 public _uint64;
    uint256 public _uint256; uint128 public _uint128;









    bool public _validBool;
    uint public _validUInt;
    uint public _validUin16;
    uint public _validUin32;
    uint public _validUin64;

    bool public _bools1; bool public _bools2; uint public _ints1; uint public _ints2;
    uint8 public _uints1; uint8 public _uints2;
    uint16 public _uint16s1; uint16 public _uint16s2;
    uint32 public _uint32s1; uint32 public
