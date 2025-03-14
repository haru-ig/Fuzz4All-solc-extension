pragma solidity ^0.8.0;
contract Drink {}

pragma solidity ^0.8.0;
contract ArrayExample {
    bool public firstBool = true;
    uint256[] public intArray;
    uint[] public intByteArray;
    bytes32[] public uintArray;
    address[] public addressArray;
    mapping(bool => uint256) public boolToUint;
    mapping(uint256 => uint256) public uintToUint;
    mapping(uint => bytes32) public uintToBytes32;
    constructor (uint[4] memory inputArray, bytes32[2] memory inputByteArray) {

        intArray = inputArray;
        intArray.push(1);
        intArray[0xFFFE] = 0x1FFFE2;
        bytes32[] memory arr = new bytes32[](2);
        arr.push(0x1FFFE4);
        arr[0xFFFC] = 0x2FFFE4;
        uintArray.push(0x80400000000000000000000000000040);
        uintArray.push(0x001F);
        uintArray[0x00BE] = 0x3F00;
        boolToUint[false] = 2;
        boolToUint[true] = 3;
        uintToUint[0] = 111;
        uintToUint[0xFFFE] = 0x45FE;
        uintToBytes32[4] = 0x0004;
        uintToBytes32[3] = 0x4588;
        uintToBytes32[0xfffffffe] = 0x00000001;
        uintToBytes32[0xffffffff] = 0xFFFFFFFF;
        uintToBytes32[0x20000] = 0x2000000000000000;
        addresses[0xfe] = 0x3FEE;
        addresses[0xFE] = 0x3FEE;
        addresses[0xFFFE] = 0x3FEE;
        addressArray.push(0x55555555555555555555555555555555555555555555555555555555555555;
        addressArray.push(0x6666666666666666666666666666666666666666666666666666666666666666;
        addressArray.push(0xFFFFFFFE6666666666666666666666666666666666666666666666666666666666;
        addressArray.push(0
