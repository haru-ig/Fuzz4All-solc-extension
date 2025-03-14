pragma solidity ^0.8.0;

















import './StringConvertible.sol';
contract ArrayStorage is IStringConvertible {
    uint8[16] uintArray;
    bytes16 bytesArray;
    address[1] addressArray;

    constructor () {
        uintArray[0] = 1;
        bytesArray = 42;
        addressArray = address(this);
    }

    function getAddress(address self) public pure returns (address) {

        uint256 i = 0;
        uint256 arrLength = self.balance + self.codeSize - 1;
        self.codeSize;
