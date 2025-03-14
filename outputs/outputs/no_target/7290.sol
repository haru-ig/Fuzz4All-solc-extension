pragma solidity ^0.8.0;
contract LegacyAbiCoder {
    function encodeNumber(uint8[5] memory o) public pure returns (bytes memory) {}
    function encodeArray(bytes memory o) public pure returns (bytes memory) {}
    function encodeBytes(bytes memory o) public pure returns (bytes memory) {}
    function decodeNumber(bytes memory o, uint8[5] memory i) public pure returns (bool) {}
    function decodeArray(bytes memory o, uint8[5] memory i) public pure returns (bool) {}
    function decodeBytes(bytes memory o, bytes memory i) public pure returns (bool) {}
    function decode(bytes memory o, uint8[5] memory i) public pure returns (bytes memory, bytes memory) {}
}
