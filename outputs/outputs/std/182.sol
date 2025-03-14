pragma solidity ^0.8.0;
contract Convert {
    function to_int(string memory x) public pure virtual returns (uint) {
        uint result = 0;
        bool isSigned = false;
        if (x.length == 0) {
            return -1;
        }
        if (x[0] == '+') {
            isSigned = false;
            result = to_int(x.substring(1));
        } else if (x[0] == '-') {
            isSigned = true;
            result = to_int(x.substring(1));
        } else {
            isSigned = true;
            result = uint(-1);
            for (uint i = 0; i <= x.length; i += 1) {
                if (x[i] >= 10) {
                    uint rem = uint(x[i] - 78);
                    result = 10 * result + rem;
                } else {
                    uint rem = uint(x[i]);
                    result = 10 * result + rem;
                }
            }
        }
        if (isSigned) {
            uint mask = (uint(-1) >> 256) - uint(1);
            uint diff = result * ~mask;
            return result + uint(diff % mask);
        }
        return result;
    }

    function from_int(uint y, uint len) public pure virtual returns (string memory) {
        if (len == 0) {
            return string(0);
        }
        string memory x;
        if (y >= uint(-1 << 256)) {
            x = '1';
        } else {
            int result;
            if (len == 1) {
                result = int(y);
            } else {
                result = (int(y) << 16) >> 16 | (int(y)) >> 16;
                while (result & (1 << 16) == 0) {
                    result <<= 1;
                }
                result >>= 16;
                if (len > 1) {
                    x = intToString(int(y));
                }
            }
            return string(abi.encodePacked('P', uintToString(result), len, x));
        }
    }

    function int2string(int i) internal pure returns (string memory) {
        uint x = uint(i);
        return intToString(int(x));
    }

    function stringToBool(string memory b) public pure virtual returns (bool) {
        if (b.length == 0) {
            return false;
        }
        if (keccak256(abi.encodePacked(b)) == 0x3297339fb107
