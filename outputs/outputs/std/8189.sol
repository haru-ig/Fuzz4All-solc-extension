pragma solidity ^0.8.0;
contract Convert {
    function unsigned_to_string(uint a) public pure returns (string memory) {
        return uintToString(a, 10);
    }
    function uint_to_string(uint a) public pure returns (string memory) {
        return uintToString(a, 10);
    }
    function int_to_string(int a) public pure returns (string memory) {
        return intToString(a, 10);
    }
    function hexToUint(bytes memory input) public pure returns (uint) {
        return hexToUint(input, 10);
    }
    function hexToUint_signed(bytes memory input) public pure returns (uint) {
        return hexToUint(input, 16);
    }
    function hexToUInt(bytes memory input, uint bits) public pure returns (uint) {
        bytes memory digits = new bytes(bits);
        digits[sizeof(uint)*8 - 1] = '1';
        for (uint i = sizeof(uint)*8-2; i >= 0; --i) {
            if (input[i] > '0') {
                digits[i]  = input[i];
            }else {
                uint j = i-1;
                do {
                    digits[j] = input[j];
                    j = j +1;
                } while(j > i);
                digits[i] = '0';
            }
        }
        digits = new bytes(sizeof(uint)*8 - digits.length + 1);
        bytes1 result = bytes1(uintToHex(uint(uintToDec10(digits)))));
        return uint(result);
    }
    function uintToHex(uint a) public pure returns (bytes1 result) {
        bytes memory b = bytes(uintToDec10(bytes(a)));
        result = bytes1(uintToHex(b));
        return result;
    }
    function uintToHex_signed(uint a) public pure returns (bytes1 result) {
        bytes memory b = bytes(uintToDec10(bytes(a)));
        result = bytes1(uintToHex_unsigned(b));
        return result;
    }
    function uintToHex(bytes memory x) public pure returns(bytes1) {
        bytes memory b = new bytes(x.length * 2 + 1);
        bytes1 memory result = bytes1(uintToHex(b, x, 0, x.length));
        return result;
    }
    function uintToHex_signed(bytes memory x) public pure returns (bytes1 result) {
        bytes memory b = new bytes(x.length * 2 + 1);
        bytes1 memory result = bytes1(uintToHex_unsigned(b, x, 0, x.length));
        return result;
    }
    function uintToDec10(bytes memory x) public pure returns (
