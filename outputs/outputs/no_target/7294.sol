pragma solidity ^0.8.0;
contract AbiCoder {
    uint constant internal max = 5;
    function encode_without_type(uint8[max+1] memory o, uint8[max+1] memory i) public static pure returns (bytes memory) {}
    function encode(uint8[max+1] memory o, uint8[max+1] memory i) public static pure returns (bytes memory) {}
    function decode_without_type(uint8[max+1] memory o, uint8[max+1] memory i, uint x) public static pure returns (bytes memory) {}
    function decode(uint8[max+1] memory o, uint8[max+1] memory i, uint x) public static pure returns (bytes memory, bytes memory) {}
}
