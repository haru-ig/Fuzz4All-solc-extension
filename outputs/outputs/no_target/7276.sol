pragma solidity ^0.8.0;
contract AbiCoder2 {
    bytes1 internal constant fnByte = 0xf8;
    uint constant internal maxFn = 5;
    uint internal _numBytes;
    function createArray(uint size) public pure returns (bytes memory memory) { return bytes(abi.encodePacked(fnByte)); }
    function createNumber(uint8 n) public pure returns (bytes memory memory) { return bytes(abi.encodePacked(n)); }
    function encodeArray(bytes memory o, bytes memory i) public pure returns (bytes memory) {
        return abi.encodePacked(fnByte, uint8(o.length), o, i);
    }
    function encodeBytes(bytes memory o, bytes memory i) public pure returns (bytes memory) {
        return abi.encodePacked(fnByte, uint8(o.length), o, i);
    }
    function decodeArray(bytes memory o, uint x) public pure returns (uint8, uint64, bytes memory, bytes memory) {
        if (x & 0xff == fnByte && o.length >= 2 && _numBytes > _numBytes.sub(1)) {
            x -= fnByte + 1;
            uint8 length;
            bytes memory o1;
            bytes memory i2;
            bytes memory.storage(abi.encodePacked(o1, i2)).decode(o1);
            return (length, x, o1, i2);
        } else {
            return (42, 0, o, i);
        }
    }
    function decodeBytes(bytes memory o, uint x) public pure returns (uint8, uint64, bytes memory, bytes memory){
        if (x & 0xff == fnByte && o.length >= 2 && _numBytes > _numBytes.sub(1)) {
            x -= fnByte + 1;
            uint8 length;
            bytes memory o1;
            bytes memory i2;
            bytes memory.storage(abi.encodePacked(o1, i2)).decode(o1);
            return (length, x, o1, i2);
        } else {
            return (42, 0, o, i);
        }
    }
    function decode(bytes memory o, bytes memory i, uint x) public pure returns (bytes memory, bytes memory) {
        uint
