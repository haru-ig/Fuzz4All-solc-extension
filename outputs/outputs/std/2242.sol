pragma solidity ^0.8.0;
contract ArrayQ2 {
    uint[] numbers;
    constructor(uint numbers_) {
        numbers = new uint[](numbers_);
    }
    function sumArray() public view returns (uint) {
        uint sum;
        uint i;
        for(i = 0; i < numbers.length; i++) {
            sum = sum + numbers[i];
        }
        return sum;
    }
    function push(uint inPut) public onlyOwner returns (uint) {
        require(inPut < 256);
        uint numberOfBytesInWord = (uint(1)) / (uint(2));
        for(uint i = numberOfBytesInWord; i >= 1; i /= 2) {
            uint offset = i * (uint(bytes16(msg.sender)).value >> 4);
            uint mask = bytes16(0x80) >> offset;
            bytes16 shiftedBytes = bytes16(uint(bytes16(inPut)) << offset);
            uint byte = binaryOr(maskedBytesWith(shiftedBytes, mask, uint(1)), b);
            bytes16 byteRecoded = bytes16(byte);
            bytes16 newByte = byteRecoded << shiftFor(numberOfBytesInWord, uint(1)) - offset;
            bytes16 newBytes;
            assembly {
                newBytes := wordOr(maskedBytesWith(newByte, b), mask, newBytes)
            }
            return bytes16(newBytes);
        }
    }
    uint maskForLastWord(uint numberOfBytesInWord) internal pure returns (uint mask) {
        return numberOfBytesInWord > 8? bytes16(0xFFFF) : bytes16(0xFF);
    }
    function binaryOr(bytes16 x, bytes16 y, bytes16 z) internal pure returns (bytes16 ret) {
        ret = bytes16(uint(x) | uint(y) | uint(z));
    }
    bytes16 maskedBytesWith(bytes16 x, bytes16 y, bytes16 z) internal pure returns (bytes16 ret) {
        byte a = byte(uint(x) & uint(y) & uint(z));
        byte shift = uint(binaryOr(x, y, z)) & uint(maskForLastWord(0));
        shift = binaryOr(shift, a, a);
        ret = binaryOr(shift, uint(binaryOr(x, 0xFF, y)), a);
    }
    uint shiftFor(uint numberOfBytesInWord, uint value) internal pure returns (uint) {
        byte shift = numberOfBytesInWord <= 8? uint8(uint(bytes16(value)) + 4) : uint8(numberOfBytesInWord - 9);
        uint lsb = binaryOr(value
