pragma solidity ^0.8.0;
contract Array {
    struct Array_ {
        uint[] elements;
    }
    Array_ memory _array;
}

contract Array_ {
    uint8[2] memory _2Bytes = "Hello";
    uint16[2] mem_16Bytes = "Hello World";
    uint256[2] memory _256Bytes = "Hello World";
    bytes memory _bytes = "Hello World";
    string memory mem_string = "Hello World";
    mapping(uint => uint[]) _arrayMapping;
    mapping(uint => uint) _arrayMapping_4UInt;
}
