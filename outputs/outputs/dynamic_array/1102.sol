pragma solidity ^0.8.0;
contract MutatingReturnsArrayOfUnsignedInts {
    uint public _uint;
    uint[] _uintArray;
    uint[1] public _uint8Values;
    uint256[1] public _uint256Values;
    uint8[1] public _uint8;
    uint8[1] public _uint8ArraysWithNullPointer;
    uint8[1] public _uint8ArraysWithNullAndReallocated;
    mapping(uint256 => uint256) public _uint256;
}
contract MutatingReturnsArrayOfUnsignedIntsWithUnspecifiedSignatures {
    uint public _uint;
    uint[] _uintArray;
    uint[1] public _uint8Values;
    uint256[1] public _uint256Values;
    uint8[1] public _uint8;
    uint8[1] public _uint8ArraysWithNullPointer;
    uint8[1] public _uint8ArraysWithNullAndReallocated;
    mapping(uint256 => uint256) public _uint256;
}
