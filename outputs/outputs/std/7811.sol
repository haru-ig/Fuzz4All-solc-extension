pragma solidity ^0.8.0;
contract Convert {
    function toByteArray(uint inUnsigned) public pure returns(bytes memory b) {
        bytes memory dec = bytes(inUnsigned.toString());
        uint size = dec.length;
        b = new bytes(size);
        for(uint i = 0; i < size; i++) {
            b[i] = dec[i];
        }
    }
    function toHexString(uint inUnsigned) public pure returns(bytes memory h) {
        bytes memory dec = bytes(inUnsigned.toString());
        uint size = dec.length;
        b = new bytes(size * 2);
        h = new bytes(size * 2).toString();
        for(uint i = 0; i < size; i++) {
            charToHex(dec[i], b, 2 *
