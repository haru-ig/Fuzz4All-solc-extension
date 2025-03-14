pragma solidity ^0.8.0;
contract D {
    uint16[2] public _storage = [0, 0];
    uint256[2] public _array; uint256[1] public _nestedArray; uint256[1][4] public _arrayOfNested;
    uint256[2] public _arrayOf;
    address[3] public _arrayOfAddresses;
    address[1] public _arrayOfAddresses[2];
    address private _arrayOfAddresses_;
    address[1][4] public _arrayOfAddressAndUInt;
    uint32[2] public _arrayOf2UInt;
}
