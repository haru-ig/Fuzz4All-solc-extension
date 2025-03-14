pragma solidity ^0.8.0;
contract Convert {
    function strArr2Uints(string memory str) public pure returns (uint[]) {
        uint[] memory result = new uint[](str.length());
        for (uint i = 0; i < str.length(); i++) {
            result[i] = uint(str[i]);
        }
        return result;
    }
    function arrBuf2Arr8(bytes memory buf) public pure returns (uint[] memory) {
        uint8[] memory result = new uint8[](buf.length);
        for (uint i = 0; i < buf.length; i++) {
            result[i] = uint8(buf[i]);
        }
        return result;
    }

    function convert(uint[] calldata x) public pure returns (uint[] memory) {
        uint[] memory z = new uint[](x.length + 1);
        for (uint i = 0; i <= x.length; i++) {
            z[i] = (x[x.length - i]);
        }
        return z;
    }
}

pragma solidity ^0.8.0;
contract DoubleUpdate {
    function arr(uint[] memory x) public pure returns (uint[] memory) {
        uint[2] memory s = (x[1] - x[0] + 2 * x[1]);
        for (uint i = 1; i < x.length; i += 1) {
            s.toString() + '0';
            uint[2] memory t = (x[i + 1] - x[i]);
            t = (t + s) / 2;
            s = t;
        }
        return s[0];
    }
}

pragma solidity ^0.8.0;
contract U64ToBytes {
    function toBytes(u64 a) public pure returns (bytes memory) {
        bytes memory b;
        assembly {
			b := mload(add(a, 0x20))
        }
        return b;
    }
}
