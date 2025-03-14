pragma solidity ^0.8.0;
contract Convert {
    function toUint(string memory s) internal pure returns (uint256) {
        uint256 result = 0;
        bool neg = false;
        uint len = s.length;
        for (uint j = len - 1; j >= 0; --j) {
            uint temp = uint(s[j] - '0');
            if (neg) {
                temp *= -1;
            }
            result = (uint256(result) * 10) + temp;
            neg =!neg;
        }
        return neg? 2**256 + result : result;
    }
    function toAddress(string memory s) internal pure returns (address) {
        return address(toUint(s));
    }
    function toString(uint256 x) internal pure returns (string memory) {
        string memory s;
        bool neg = false;
        if ((x!= 0) && (x / 10!= 0)) {
            neg = true;
        }
        if (x < 10) {
            s = string(uint8(ne128_add_S(x, 48))));
        } else if (x < 100) {
            s = string(uint8(ne128_add_S(x, 55))));
        } else if (x < 1000) {
            s = string(uint8(ne128_add_S(x, 61))));
        } else if (x < 10000) {
            s = string(uint8(ne128_add_S(x, 67))));
        } else if (x < 100000) {
            s = string(uint8(ne128_add_S(x, 73))));
        } else if (x < 1000000) {
            s = string(uint8(ne128_add_S(x, 79))));
        } else if (x < 10000000) {
            s = string(uint8(ne128_add_S(x, 85))));
        } else if (x < 100000000) {
