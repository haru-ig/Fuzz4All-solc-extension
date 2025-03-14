pragma solidity ^0.8.0;
contract Convert {
    function toHex(uint256 value) public pure returns (string memory) {
        if (value < 10)
            return "0" + uint8ToString(value);
        else
            return uint8ToString(value);
    }
    function uint8ToString(uint256 value) internal pure returns (string memory) {
        if (value == 0) return "0";
        uint256 temp = value;
        uint256 digits;
        while (temp!= 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value!= 0) {
            buffer[--digits] = bytes1(uint8(uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }
}
contract Memory {
    function get(address memory _storage) public view returns (uint256);
}

pragma solidity ^
