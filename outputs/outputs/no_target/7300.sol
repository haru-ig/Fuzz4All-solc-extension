pragma solidity ^0.8.0;
contract AbiCoderDowngraded {
    uint constant internal max = 5;
    function encodeNumber(bytes memory o, uint8[max+1] memory i) public pure returns (bytes memory) {
        return bytes(o);
    }
    function encodeBytes(bytes memory o, bytes memory i) public pure returns (bytes memory) {
        return bytes(o);
    }
    function decodeNumber(bytes memory o, uint8[max+1] memory i, uint x) public pure returns (bool) {
        return o[0] > 1;
    }
    function decodeBytes(bytes memory o, bytes memory i, bytes memory x) public pure returns (bool) {
        return (i[0] << 16) | (i[1] << 8) | (i[2] << 0) >= 100000;
    }
    function decode(bytes memory o, uint8[max+1] memory i, uint x) public pure returns (bytes memory, bytes memory) {
        return (bytes(o), bytes(o+4));
    }
 }
