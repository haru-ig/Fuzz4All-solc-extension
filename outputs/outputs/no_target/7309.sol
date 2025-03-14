pragma solidity ^0.8.0;
contract NonMutatedAbiCoder {
    bytes8 constant internal max = 0;
    bytes8 public _max;
    function encodeNumber(bytes memory o, uint8[max+1] memory i) public pure returns (bytes memory) {}
    function encodeBytes(bytes memory o, bytes memory i) public pure returns (bytes memory) {}
    function decodeNumber(bytes memory o, uint8[max+1] memory i, uint x) public pure returns (bool) {}
    function decodeBytes(bytes memory o, bytes memory i, bytes memory x) public pure returns (bool) {}
    function decode(bytes memory o, uint8[max+1] memory i, uint x) public pure returns (bytes memory, bytes memory) {}
 }
contract NonMutatedAbiCoderWithoutRevert {
    bytes8 constant internal max = 0;
    function encodeNumber(bytes memory o, uint8[max+1] memory i) public pure returns (bytes memory) {}
    function encodeBytes(bytes memory o, bytes memory i) public pure returns (bytes memory) {}
    function decodeNumber(bytes memory o, uint8[max+1] memory i, uint x) public pure returns (bool) {}
    function decodeBytes(bytes memory o, bytes memory i, bytes memory x) public pure returns (bool) {}
 }
contract NonMutatedAbiCoderWithoutLog {
    bytes8 constant internal max = 0;
    function encodeNumber(bytes memory o, uint8[max+1] memory i) public pure returns (bytes memory) {}
    function encodeBytes(bytes memory o, bytes memory i) public pure returns (bytes memory) {}
    function decodeNumber(bytes memory o, uint8[max+1] memory i, uint x) public pure returns (bool) {}
    function decodeBytes(bytes memory o, bytes memory i, bytes memory x) public pure returns (bool) {}
 }
contract TestMutatedAbiCoderWithLog {
    bytes8 constant internal max = 0;
    function decodeNumber(bytes memory o, uint8[max+1] memory i, uint x) public pure returns (bool) {
        if (i[0] > _max || i[0] < 1) {



            return DecodeError(uint16(x), bytesCallData
