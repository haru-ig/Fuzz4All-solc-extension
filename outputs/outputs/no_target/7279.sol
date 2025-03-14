pragma solidity ^0.8.0;
contract AbiCoder1 {
    uint public constant version = 1;
    function encodeNumber(uint8[] memory o, bytes memory i) public pure returns (bytes memory) { }
    function encodeArray(bytes memory o, bytes memory i) public pure returns (bytes memory) { }
    function encodeBytes(bytes memory o, bytes memory i) public pure returns (bytes memory) { }
    function decodeNumber(bytes memory o, bytes memory i, uint x) public pure returns (bool) { }
    function decodeArray(bytes memory o, bytes memory i, uint x) public pure returns (bool) { }
    function decodeBytes(bytes memory o, bytes memory i, bytes memory x) public pure returns (bool) { }
    function decode(bytes memory o, bytes memory i, uint x) public pure returns (bytes memory, bytes memory) { }
}
contract AbiCoder2A is AbiCoder1, AbiCoder2 {
    function encodeBytes(bytes memory o, bytes memory i) override pure returns (bytes memory) {
        bytes memory b1;
        uint z1;
        for (uint j = 0; j < abipy.abi.decodeBytes(i, b1, z1); j++) {
            if (i[j]!= 0) {
                i = bytes1(00);
            }
        }
        return b1;
    }
    function decodeBytes(bytes memory o, bytes memory i, bytes memory x) override pure returns (bool) {
        bytes memory b1;
        uint z1;
        bool z2 = abipy.abi.decodeBytes(i, b1, z1);
        (i, b1) = bytes1(0x0), (i, x) = bytes1(0x0);
        return z2;
    }
    function decode(bytes memory o, bytes memory i, uint x) override pure returns (bytes memory, bytes memory) {
        bytes memory b1;
        uint z1;
        if (decodeBytes(o, b1, x)) {
            (i, x) = bytes1(0x0), b1 = bytes1(0x0);
        } else {
            (i, x) = encodeNumber(decodeNumber(o, b1, x)? decodeNumber(o, b1, x)
