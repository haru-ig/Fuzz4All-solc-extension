pragma solidity ^0.8.0;
contract Convert{
    function HexToBin(
        bytes32 encoded
    ) public pure returns (bytes memory) {
        bytes memory buffer = new bytes(encoded.length / 8 + 1);
        uint index = 0;
        for(bytes memory bytePointer = bytearray(encoded); index > -1; index --){
            buffer[buffer.length / 8 - index] = bytes1(bytePointer[index]);
        }
        return buffer;
    }
    function BinToHex(
        bytes memory data
    ) public pure returns (bytes32) {
        uint length = data.length;
        return bytes32(uint(length) + length + 32);
    }
    function IntToHexString(
        uint value
    ) public pure returns (string memory) {
        bytes memory buffer = new bytes(20);
        bytes1 charData1 = bytes1(uint8(value / 16**uint(20))));
        bytes1 charData2 = bytes1(uint8(value - ((uint(charData1) * 16) * 16**uint(20)))));
        buffer[0] = '0';
        buffer[1] = charData1;
        buffer[2] = charData2;
        return string(bytes(buffer));
    }
    function IntToHexString8(
        uint8[6] memory value
    ) public pure returns (string memory) {
        bytes memory buffer = new bytes(32);
        bytes1 charData1 = bytes1(uint8(value[5] / 16**uint8(20))));
        bytes1 charData2 = bytes1(uint8(value[5] - ((uint(charData1) * 16) * 16**uint8(20)))));
        bytes1 charData3 = bytes1(uint8(value[4] / 16**uint8(20))));
        bytes1 charData4 = bytes1(uint8(value[4] - (uint(charData3) * 16) * 16**uint8(20)))));
        bytes1 charData5 = bytes1(uint8(value[3] / 16**uint8(20))));
        bytes1 charData6 = bytes1(uint8(value[3] - ((uint(charData5) * 16) * 16**uint8(20)))));
        bytes1 charData7 = bytes1(uint8(value[2] / 16**uint8(20))));
        bytes1 charData8 = bytes1(uint8(value[2] - ((uint(charData7) * 16) * 16**uint8(20)))));
        bytes1 charData9 = bytes1(uint8(value[1] / 16**uint8(20))));
        bytes1 charData10 = bytes1
