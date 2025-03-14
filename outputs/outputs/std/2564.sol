pragma solidity ^0.8.0;
library BitArray {
    constructor (uint numBits) {
        require(numBits >= 0, "BitArray: array needs to contain at least one 1 value");
        bitLength = numBits;
    }
    function getValue(uint index) public view returns (uint) {
        uint shift = (bitLength-(index + 1));
        uint shiftRight = uint(uint(index) >> shift) << shift;
        return (uint(bitArray) >> shiftLeft);
    }
    function setValue(uint index, uint newValue) public {
        uint shift = (bitLength-(index + 1));
        uint newBitArray = (uint(newValue) << shift) & uint((uint(bitArray)) << shift);
        bitArray = newBitArray;
    }
    event Read(uint bitArray, uint indexed index);
    event Write(uint indexed bitArray, bool indexed value);
    event Size(uint indexed numBits);
    function size() public view returns (uint) {
        return bitLength;
    }
    function get(uint index) public view returns (uint) {
        return getValue(index);
    }
    function set(uint index, uint newValue) public {
        setValue(index, newValue);
    }
    function getZeroBasedLength() public view returns (uint) {
        return bitLength - 2;
    }
    function getNth(uint index) public view returns (uint) {
        return getValue((bitLength - 1) - index);
    }
    function toHexString(uint bitArray) public pure returns (string memory) {
        uint len = getNth(bitArray);
        bytes memory b = new bytes(len * 2);
        for (uint j = 0; j < len; j++) {
            uint bit = get(j);
            b[j * 2 + 1] = "0123456789abcdef"[bit];
            b[j * 2] = "0123456789abcdef"[bit >> 4];
        }

        while (b[len - 1] == '0') {
            b = bytes(b.sub(1, 1));
        }
        return string(b);
    }
    function toString() public view returns (string memory) {
        return "0x" + toHexString(uint(bitArray));
    }
    uint bitLength;
    uint bitArray;
}
