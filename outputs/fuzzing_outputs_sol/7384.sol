pragma solidity ^0.8.0;
contract Mutations {
    address[] public arrayAddress;
    mapping(uint => bytes32) public mapString;
    mapping(bytes32 => uint) public mapUint;
    uint public numberUint;
    bytes32 public string32;
    bytes memory public stringBytes;
    bool public bool;
    mapping(bytes32 => bool) public mapStringBool;
    uint public maxUint;
    bytes32 public max32;
    mapping(bytes32 => bytes32) public mapStringMax;
    uint8 public uint8;
    bytes8 public bytes8;
    bytes private bytesPrivate;
    mapping(uint => mapping(bool => uint)) public mapUintBool;
    mapping(uint => uint) public mapUintUint;
    bool[] private boolArray;
    mapping(uint => bool[]) private mapUintBoolArray;
    bytes[] private bytesArray;
    constructor() public {
        maxUint = 1234;
        bytes32 bytes321 = bytes32(123);
        uint[] memory uints = [
            254
        ];
        (uint uint1, uint uint2) = uints;
        uint uint3 = 123;
        uint uint4 = 1507;
        bytes32 bytes322 = bytes32(uints);
        bytes32 bytes323 = bytes32(uint4);
        bytes32 bytes324 = bytes1024(uint8);
        bytes1024 bytes10241 = bytes1024(uint1);
        bytes1024 bytes10242 = bytes1024(uint2);
        bytes32 bytes325 = bytes32(uint3);
        uint[] memory uint5 = [
            19, 131, 18, 101,
            19, 131, 18, 109,
        ];
        uint[4] memory uint6 = uint5;
        mapping(bytes32 => bytes32) memory test = [
            'key'
        ];
        storageTest = bytes32(mappingTest);
    }
}
bytes1024 bytes1024(uint8) public {
    return bytes10241;


    bool [] public bool;
    mapping (uint => bool) public mapBoolUint;
    mapping (bytes32 => bool) public mapStringBool;
    bytes32 public bytes320;
    constructor() public {
        bytes _bytes1024 = bytes1024(1234);
    }
}
