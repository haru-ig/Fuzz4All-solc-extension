pragma solidity ^0.8.0;
contract AbiCoder2 {
    uint constant internal max = 5;
    mapping (uint => uint8) x;
    mapping (uint => uint8) y;
    function encodeFunction(uint8[] memory o, uint8[] memory i) public pure returns (bytes memory) {}
    function encodeArray(bytes memory o, bytes memory i) public pure returns (bytes memory) {}
    function encodeBytes(bytes memory o, bytes memory i) public pure returns (bytes memory) {}
    function decodeFunction(bytes memory o, bytes memory i, uint x) public pure returns (bool) {}
    function decodeArray(bytes memory o, bytes memory i, uint x) public pure returns (bool) {}
    function decodeBytes(bytes memory o, bytes memory i, bytes memory x) public pure returns (bool) {}
    function decode(bytes memory o, bytes memory i, uint x) public pure returns (bytes memory, bytes memory) {}
}
