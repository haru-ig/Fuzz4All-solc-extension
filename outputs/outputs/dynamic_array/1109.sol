pragma solidity ^0.8.0;
contract MutatingReturnsArrayOfUnsignedInts3 {
    uint public _uint;
}
contract MutatingUnsignedInts {
    uint public _uint;
    uint public _uint256;
}
contract MutatingUnsignedInts3 {
    uint public _uint;
}
contract NoMutating {
    uint public _uint;
    uint[] public _uintArray;
    uint[1] public _uint8Values;
    uint256[1] public _uint256Values;
    uint8[1] public _uint8;
    uint8[1] public _uint8ArraysWithNullPointer;
    uint8[1] public _uint8ArraysWithNullAndReallocated;
    mapping(uint256 => uint256) public _uint256;
}
contract NoMutating3 {
    uint public _uint;
}
contract OverloadReturnsArrays {
    uint public _uint;
    uint[] public _uintArray;
    uint[1000] public _uintArrayOverload;
    uint[1000] public _uintArrayOverloadWithNullPointer;
    uint8[1000] public _uint8Values;
    uint256[1000] public _uint256Values;
    uint8[1000] public _uint8;
    uint8[1000] public _uint8ArraysWithNullPointer;
    uint8[1000] public _uint8ArraysWithNullAndReallocated;
    uint256[1000] public _uint256;
}
contract OverloadReturnsArrays3 {
    uint public _uint;
    uint[] public _uintArray;
    uint8[1000] public _uint8
