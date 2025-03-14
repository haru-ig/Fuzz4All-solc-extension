pragma solidity ^0.8.0;
contract MutableAbiCoderUpgraded {
    uint constant internal max = 5;
    function encodeNumber(address o, uint8[max+1] memory i) public pure returns (bytes memory) {}
    function encodeBytes(address o, bytes memory i) public pure returns (bytes memory) {}
    function decodeNumber(address o, uint8[max+1] memory i, uint x) public pure returns (bool) {}
    function decodeBytes(address o, bytes memory i, bytes memory x) public pure returns (bool) {}
    function decode(address o, uint8[max+1] memory i, uint x) public pure returns (bytes memory, bytes memory) {}
 }
