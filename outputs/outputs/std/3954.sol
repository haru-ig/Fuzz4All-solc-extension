pragma solidity ^0.8.0;
contract Convert {
    function toBase10(uint n) public pure returns (string memory) {
        uint i = 0;
        uint[2] memory s;
        if (n == 0) {
            return "0";
        }

        s[0] = 0;
        while (n!= 0) {
            s[i] = n % 10;
            n = n / 10;
            i++;
        }
        bool odd = false;
        if (i == 0) {
            return "0";
        }
        while (i > 0) {
            if (s[i - 1] % 2 == 1) {
                odd = true;
            }
            i--;
        }
        if (!odd) {
            return string(abi.encodePacked("0x", bytetoString(s)));
        }
        return string(abi.encodePacked("0x", bytetoString(s)));
    }
    function toBase16(uint n) public pure returns (string memory) {
        uint i = 0;
        uint[4] memory s;
        if (n ==0) {
            return "0x0";
        }
        s[0] = 0;
        while (n!= 0) {
            s[i] = n % 16;
            n = n / 16;
            i++;
        }
        bool odd = false;
        if (i == 0) {
            return "0x0";
        }
        while (i > 0) {
            if (s[i - 1] % 2 == 1) {
                odd = true;
            }
            i--;
        }
        if (!odd) {
            return string(abi.encodePacked("0x", "0x00", bigtohex(s)));
        }
        return string(abi.encodePacked("0x", "0x00", bigtohex(s)));
    }
    function toBinaryString(uint n) public pure returns (string memory) {
        uint j = 0;
        return string(abi.encodePacked(byteToString(n), "0"));
    }
    function toHexString(uint n) public pure returns (string memory) {
        uint j = 0;
        return string(abi.encodePacked(byteToString(n), hexToAscii("0x")));
    }
    function toUnsignedNumber(string memory strNum, uint8 len) public pure returns (uint) {
        uint i = uint(0);
        uint sign = uint(1);
        string memory s = new string(strNum.length);
        for (i = s.length-1; i >= 0; --i) {
            s[i] =
