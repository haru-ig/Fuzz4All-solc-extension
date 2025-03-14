pragma solidity ^0.8.0;
contract Convert {
    function stringToUint(string memory source) public pure returns (uint256) {
        return fromUint256(uint256(keccak256(abi.encodePacked(source))));
    }
    function uintToString(uint256 source) public pure returns (string memory) {
        return uintToString(source, "");
    }
    function uintToString(uint256 source, string memory sourcePrefix) public pure returns (string memory) {
        if (source == 0) {
            return sourcePrefix;
        }
        uint size = 0;
        while (source!= 0) {
            size++;
            source /= 10;
        }
        bytes memory buffer = new bytes(size);
        buffer[size - 1] = '0';
        buffer[size - 2] = '0';
        uint power = 1;
        for (uint i = size - 3; i > 0; i--) {
            buffer[i] = byte(uint(uint8(source % 10)) + 48);
            source /=
