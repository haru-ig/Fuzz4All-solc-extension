pragma solidity ^0.8.0;
contract MutatedAbiCoder {
    function encodeNumber(bytes memory o, uint8[5] memory i) public pure returns (bytes memory) {}
    function encode(bytes memory o, uint8[5] memory i) public pure returns (bytes memory) {}
    function decodeNumber(bytes memory o, uint8[5] memory i, uint x) public pure returns (bool) {}
    function decode(bytes memory o, uint8[5] memory i, uint x) public pure returns (bytes memory, bytes memory) {}
 }
