pragma solidity ^0.8.0;
library Convert {
    function fromBase(string memory hex) internal pure returns (uint n) {
        return uint(uint8(hex[0]), 16) * 0x100 + uint(uint8(hex[1]), 16);
    }
    function toString(uint n) internal pure returns (string memory str) {
        require(n!= 0, "Can't convert zero to string");
        if (n == uint(-1)) return "-1";
        uint len = 1;
        while (n!= 0) {
            n /= 10;
            len++;
        }
        bytes memory b = new bytes(len);
        for (uint i = len - 1; i >= 0; i--) {
            b[i] = byte(uint8(48 + n % 10));
            n /= 10;
        }
        bytes memory reversed = new bytes(b.length);
        uint j = 0;
        for (uint i = 0; i < len; i++) {
            reversed[j++] = b[i];
        }
        return string(reversed);
    }
}
