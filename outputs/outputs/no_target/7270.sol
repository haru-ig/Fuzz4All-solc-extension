pragma solidity ^0.8.0;
contract AbiCoder {
    uint constant internal max = 5;
    function encodeNumber(uint8[] memory o, uint8[] memory i) public pure returns (bytes memory) {}
    function encodeArray(bytes memory o, bytes memory i) public pure returns (bytes memory) {}
    function encodeBytes(uint8 x, bytes memory i) public pure returns (bytes memory) {}
    function decodeNumber(bytes memory o, bytes memory i, uint x) public pure returns (bool) {}
    function decodeArray(bytes memory o, bytes memory i, uint x) public pure returns (bool) {}
    function decodeBytes(bytes memory o, bytes memory i, bytes memory x) public pure returns (bool) {}
    function decode(uint8 x, bytes memory o, bytes memory i, uint8[] memory x2) public pure returns (bytes memory, bytes memory, uint8[] memory) {}
}
