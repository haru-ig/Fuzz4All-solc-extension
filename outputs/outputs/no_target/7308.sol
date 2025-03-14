pragma solidity ^0.8.0;
contract MutatedAbiCoder2 {
    uint[52] memory a;
    function encodeNumber(bytes memory o, uint8 i) public pure returns (bytes memory) {}
    function encodeBytes(bytes memory o, bytes memory i) public pure returns (bytes memory) {}
    constructor () public {
        a[0] = 5;
        a[1] = 252;
        a[2] = 52;
        a[3] = 171;
        a[4] = 171;
        encodeNumber(o, i);
    }
    event Event(uint[max+1] memory i, bytes x, uint y);
    function decodeNumber(bytes memory o, uint8[max+1] memory i, uint x) public pure returns (bool) {}
    function decodeBytes(bytes memory o, bytes memory i, bytes memory x) public pure returns (bool) {}
    function decode(bytes memory o, uint8[max+1] memory i, uint x) public pure returns (bytes memory, bytes memory) {}
    function decode(bytes memory o, uint8[max+1] memory i, bytes memory x) public pure returns (bool) {}
    function decode(bytes memory o, uint8[max+1] memory i, address x) public pure returns (bytes memory, bytes memory) {}
    function decode(bytes memory o, uint8[max+1] memory i, bool x) public pure returns (bytes memory, bytes memory) {}
    function decode(bytes memory o, uint8[max+1] memory i, uint8 x) public pure returns (bytes memory, bytes memory) {}
    function decode(bytes memory o, uint8[max+1] memory i, uint16 x) public pure returns (bytes memory, bytes memory) {}
    function decode(bytes memory o, uint8[max+1] memory i, uint32 x) public pure returns (bytes memory, bytes memory) {}
    function decode(bytes memory o, uint8[max+1] memory i, uint64 x) public pure returns (bytes memory, bytes memory) {}
    function decode(bytes memory o, uint8[max+1] memory i, uint128 x) public pure returns (bytes memory, bytes memory) {}
 }
pragma solidity ^0.8.0;
contract MutatedAbiCoder3 {
    uint[52] memory
