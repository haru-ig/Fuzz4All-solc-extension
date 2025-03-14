pragma solidity ^0.8.0;
contract Convert {
    function toString(uint256 value, uint8 length) public pure returns (string memory) {
        bool isNegative = false;
        if (value < 0) {
            value = -value;
            isNegative = true;
        }
        uint256 digits = 0;
        while (value > 0) {
            uint256 remainder = value % 10;
            if (digits < length) {
                digits++;
            }
            value /= 10;
        }
        string memory result = toStringNoPrefix(-isNegative, digits, 10);
        return result.substring(result.length - length + 1);
    }
    function toUnsigned(uint256 value) public pure returns (uint8) {
        return bytes2Uint8(toString(value));
    }
    function bytes2Uint8(bytes1 bytes) internal pure returns (uint) {
        require(bytes.length >= 1, "The provided bytes are empty.");
        require(bytes[0] >= '0' && bytes[0] <= '9', "The provided byte is not
