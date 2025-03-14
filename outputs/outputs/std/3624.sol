pragma solidity ^0.8.0;
contract Convert {
    mapping(uint => uint) internal _arrayOfUints;
    mapping(uint => bytes) internal _arrayOfBytes;
    mapping(uint => address) internal _arrayOfAddresses;
    uint private _numberToConvert;
    uint private _conversionFactor;
    address private _owner;
    Array.Array private _array;
}
