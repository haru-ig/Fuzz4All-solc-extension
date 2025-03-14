pragma solidity ^0.8.0;
contract Convert {
    uint128 one = 1;
    uint256 two = 2;
    uint256 third = 3;
    uint232 fourth = 4;

    function toHexString(uint128 x) public pure returns (string memory) {
        return toStringWithPrefix(toStringWithPrefix(0, x), "0x");
    }

    function toStringWithPrefix(uint128 x, string memory prefix) private pure returns (string memory) {
        if (x == 0) {
            return prefix;
        } else {
            return prefix + toStringWithPrefix(x / 10, string(uint8ToString(x % 10)));
        }
    }

    function uint8ToString(uint8 b) private pure returns (string memory) {
        return toStringWithPrefix(b, "0000000");
    }
}
