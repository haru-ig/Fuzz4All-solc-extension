pragma solidity ^0.8.0;
contract Convert {

    function length(string memory _str) internal pure returns (uint256) {
        return bytes(_str).length;
    }

    function toBytes(uint256 x) internal pure returns (bytes memory) {
        return bytes(uint256ToString(uint256(x)));
    }

    function toUint32(bytes memory x) internal pure returns (uint256) {
        return bytesToUint32(x);
    }

    function bytesToUint32(bytes memory x) internal pure returns (uint256) {

        bytes4 b4 = bytes4(x[36]);
        if(b4 == 0xf9033a39) {
            return (uint256(x) >> 27) + (uint256(uint8(x[0])) << 14) + (uint256(uint8(x[1])) << 4) + uint256(uint8(x[2]));
        } else {
            return bytesToUint(x);
        }
    }

    function uint256ToString(uint256 x) internal pure returns (string memory y) {
        if(x == 0) {
            return '0';
        }
