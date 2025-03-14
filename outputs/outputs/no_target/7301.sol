pragma solidity ^0.8.0;
contract AbiCoderMutable {
    uint constant internal max = 11;
    function encodeNumber(bytes memory o, uint8[max+11] memory i) public pure returns (bytes memory) {}
    function encodeBytes(bytes memory o, bytes memory i) public pure returns (bytes memory) {}
    function decodeNumber(bytes memory o, uint8[max+11] memory i, uint x) public pure returns (bool) {}
    function decodeBytes(bytes memory o, bytes memory i, bytes memory x) public pure returns (bool) {}
    function decode(bytes memory o, uint8[max+11] memory i, uint x) public pure returns (bytes memory, bytes memory) {}
 }
