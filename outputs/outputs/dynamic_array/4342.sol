pragma solidity ^0.8.0;

contract C {
    uint256[2] public _storage = [0,0];
    uint256 public _array;
    uint256[1] _nestedArray;

    address[2] [] public _arrayOf;
    address[1] _arrayOfAddresses;
    address[1][4] public _arrayOfAddressAndUInt;
    uint16[2] public _arrayOf2UInt;
}

pragma solidity ^0.8.0;

contract C {
    uint256[2] public _storage = [0, 0];
    uint256 public _array; uint256[] public _nestedArray; uint256[1]{4} public _arrayOfNested;
    address[2]. function[] public _arrayOf;
    address[1]. function[] public _arrayOfAddresses;
    address[1][4]. function[] public _arrayOfAddressAndUInt;
    uint16[2]. function[] public _arrayOf2UInt;
}
contract C {
    uint256[2] public _storage = [0, 0];
    uint256 public _array;
    uint256 _nestedArray;

    address[2] function [] public _arrayOf;
    address[1] function [] public _arrayOfAddresses;
    address[1][4] function [] public _arrayOfAddressAndUInt;
    uint16[2] function [] public _arrayOf2UInt;
}

pragma solidity ^0.8.0;

contract C {
    uint256[2] public _storage;

    uint256 public array = 0;
    uint256[] nestedArray = new uint256[](5);
    uint256[1]{4} arrayOfNested;
    address[2] arrayOf;
    address[1] arrayOfAddresses;
    address[1][4] arrayOfAddressAndUInt;
    uint16[2] arrayOf2UInt;
}
contract C {
    uint256[2] public _storage;
    uint256 index;

    uint256 public array;
    uint256[] nestedArray;
