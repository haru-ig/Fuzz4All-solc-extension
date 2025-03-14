pragma solidity ^0.8.0;
contract ExampleStruct92 {
    uint  __lowUint = 0xffffffff;
    uint  __highUint = 0;
    uint  __maxUint = 0xffffffff;
    uint  __minInt = 0;
    uint  __highestInt = 0;
    uint256 __uint = 0x4271000000000000;
    uint8   __int = 0x42;

    struct UIntAndInt {
        uint  __uint;
        int   __int;
    }

    constructor () {
        __highUint = 0x8000000000000000;
    }

    function getMinMaxInt() public view returns (uint, uint) {
        return (uint( __minInt), uint( __highestInt ));
    }

    function getLowestUint() public view returns (uint) {
        return __lowUint;
    }

    function getHighestUint() public view returns (uint) {
        return __highUint;
    }

    function getHighAndLowUInt() public view returns (uint, uint) {
        return (__highUint, __lowUint);
    }

    function getHighestInt() public view returns (int) {
        return __highestInt;
    }

    function getLowestInt() public view returns (int) {
        return __minInt;
    }

    function getHighAndLowInt() public view returns (int, int) {
        return (__highestInt, __minInt);
    }

    function getLowestUIntAndHighestInt() public view returns (UIntAndInt, int) {
        UIntAndInt memory result = UIntAndInt( __lowUint, __highestInt);
        return result;
    }



    function convertByteToString(uint8 highByte, uint8 lowByte) public pure returns(string memory) {
        string memory bytes = toBytes(highByte) + toBytes(lowByte);
        return bytes;
    }

    function testEquality(uint a, uint b) public view returns (bool) {
        return a == b || a < b && a > b - 1;
    }

    function convertToUint(uint8 highByte, uint8 lowByte) public pure returns (uint8, uint) {
        (uint resLow, uint resHigh) = uint(uint(highByte) * 0x100 + uint(lowByte));
        (, uint tmp1) = uint(resLow >> 8);
        (, uint tmp2) = uint(resHigh >> 8
