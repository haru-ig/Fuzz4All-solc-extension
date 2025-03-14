pragma solidity ^0.8.0;
contract MutatedAbiCoder {
    function decodeBytes(bytes memory o, bytes memory i, bytes memory x) public pure returns (bytes memory, bytes memory) {
        return MutatedAbiCoder.decodeBytes(o, i, x);
    }
    function decodeNumber(bytes memory o, uint8[max+1] memory i, uint x) public pure returns (bool, bytes memory) {
        return MutatedAbiCoder.decodeNumber(o, i, x);
    }
 }
