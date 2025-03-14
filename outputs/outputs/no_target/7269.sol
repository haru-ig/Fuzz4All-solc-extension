pragma solidity ^0.8.0;
contract MutatedAbiCoder is AbiCoder {
    function encodeArray(bytes[] memory o, bytes[] memory i) public pure returns (bytes memory) {}
}
