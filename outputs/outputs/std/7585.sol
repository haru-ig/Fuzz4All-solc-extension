pragma solidity ^0.8.0;
contract BetterCase122 {
    uint private constant _maxByteStringLength = 67;
    constructor() {
        bytes memory byteString = "0102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f";

        bytes memory validByteString = byteString;

        require(bytes(byteString).length!= uint256(byteString.length), "invalidByteLength");

        require(bytes(validByteString).length == uint256(_maxByteStringLength), "stringTooBig");




    }
}
