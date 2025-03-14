pragma solidity ^0.8.0;
contract AbiCoder2 {
    uint constant internal max = 5;
    function encodeNumber(uint8[] memory o, uint8[] memory i) public pure returns (bytes memory) {
        return abi.encodeWithSelector(AbiCoder2.encodeNumber.selector, o, i);
    }
    function encodeArray(bytes memory o, bytes memory i) public pure returns (bytes memory) {
        return abi.encodeWithSelector(AbiCoder2.encodeArray.selector, o, i);
    }
    function encodeBytes(bytes memory o, bytes memory i) public pure returns (bytes memory) {
        return abi.encodeWithSelector(AbiCoder2.encodeBytes.selector, o, i);
    }
    function decodeNumber(bytes memory o, bytes memory i, uint x) public pure returns (bool) {
        return abi.decode(o, (uint8[], uint8[], bool)[], x)[2];
    }
    function decodeArray(bytes memory o, bytes memory i, uint x) public pure returns (bool) {
        return abi.decode(o, (uint8[], uint8[], bool)[], x)[2];
    }
    function decodeBytes(bytes memory o, bytes memory i, bytes memory x) public pure returns (bool) {
        return abi.decode(o, (uint8[], uint8[], bool)[], x)[2];
    }
    function decode(bytes memory o, bytes memory i, uint x) public pure returns (bytes memory, bytes memory) {
        return abi.decode(o, (uint8[], uint8[], bool)[], x)[2];
    }
}
