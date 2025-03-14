pragma solidity ^0.8.0;
contract Convert {
    function toOctal(uint256 value) public pure returns (string memory) {
        return toString(value, 8);
    }
    function toDecimal(uint256 value) public pure returns (string memory) {
        uint256 decimal = value;
        while (decimal % 10 == 0) {
            decimal /= 10;
        }
        return toString(decimal, 10);
    }
    function toHexString(uint256 value) public pure returns (string memory) {
        return toString(value, 16);
    }
    function toLowercase(string memory input) public pure returns (string memory) {
        return input;
    }
    function toUppercase(string memory input) public pure returns (string memory) {
        if (input == "") return input;
        while (input[length(input)-1] == 'A') {
            input = input.substring(0, length(input)-1);
        }
        return toLowercase(input);
    }
    function toString(uint256 value, uint256 base) private pure returns (string memory str) {
        str = toString(value, base, "", "");
    }
    function toString(uint256 value, uint256 base, string memory prefix, string memory suffix) private pure returns (string memory str) {
        if (base == 10) {
            str = uintToString(uint256(value), "0123456789");
        } else if (base == 16) {
            str = uintToString(uint256(value), "0123456789abcdef");
        } else if (base == 8) {
            str = uintToString(uint256(value), "01234567");
        } else if (base <= 35) {
            str = uintToString(uint256(value), "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
        } else {
            str = uintToString(uint256(value), base);
        }
        uint256 strLength = uint256(uintToString(uint256(value), base).length);
        if (strLength >= suffix.length) {
            str = prefix + suffix;
        } else {
            str += suffix;
        }
        return str;
    }
    function uintToString(uint256 value, string memory base) private pure returns (string memory) {
        string memory str;

        for (uint256 i = 0; i < base.length() && value!= 0; i++) {
            str = (str + base.substr(i, 1)) % 10000;
            value /= 10;
        }
        return str;
    }
