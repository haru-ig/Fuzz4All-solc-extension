pragma solidity ^0.8.0;

contract C {
    mapping (bytes32 => mapping(uint8 => bytes32)) values;
    uint8 n_;

    constructor (uint8 _n) {
        n_ = n_;
    }


    function push(uint8 x) public returns (uint8) {
        values[bytes32(0x00), x] = bytes32(0x00);
        n_++;
        return (x);
    }

    function retrieveMax(uint8 x) public view returns (bytes32) {
        bytes32 r;
        uint8 j;
        uint16 len = n_;
        for (j = x; j!= 0 && j < len; ++j) {
            bytes32 hash = bytes32(hash(bytes32(0x9b), len, j));
            r = bytes32(bytes2Nibble(r, 16));
            r |= hash;
        }
        return (r);
    }


    function read() public view returns (uint8) {
        return bytes4(bytes2Nibble(bytes32(0x8b), 16)) - 1;
    }

    function returnZero(uint8 x) public pure {
        bytes32 r;
        uint8 j;
        uint16 len = n_;
        for (j = x; j!= 0 && j < len; ++j) {
            bytes32 hash = bytes32(hash(bytes32(0x9b), len, j));
            r = bytes32(bytes2Nibble(r, 16));
            r |= hash;
        }
        bytes32 a = bytes
