pragma solidity ^0.8.0;
contract Convert_sol {
    uint8 constant HEX_DIGITS = 16;
    uint256 constant MAX_ASCII_DIGITS = 0x000000ff;

    function uint8ToString(uint8 a) internal pure returns (string memory) {
        bytes memory buffer = new bytes(1);
        buffer[0] = char(a);
        return string(buffer);
    }
    function char(uint8 a) internal pure returns (byte) {
        return byte(uint256(a));
    }
    function uint256ToHex(uint256 a) internal pure returns (string memory) {
        bytes memory buffer = new bytes(3);
        uint8 i;
        for (i = 0; uint256(MAX_ASCII_DIGITS) < a; i ++) {
            buffer[i] = char(a & MAX_ASCII_DIGITS);
            a >>= 8;
        }
        return string(buffer);
    }
    function byteToHex(byte a) internal pure returns (string memory) {
        return string('' + uint256ToHex(uint256(a)));
    }
}
