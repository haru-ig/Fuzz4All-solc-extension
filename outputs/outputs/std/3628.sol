pragma solidity ^0.8.0;
contract Convert {
    function uintToString(uint256 u) public pure returns (string memory) {
        return u.toString();
    }
    function bytesToString(bytes memory b) public pure returns (string memory) {
        return bytesToString(abi.encodePacked(b));
    }
    function bytesToString(bytes memory _str) public pure returns (string memory) {
        bytes memory str = bytes(_str);
        if (str.length == 0) {
            return "";
        } else {
            uint strLen = str.length;
            uint charSize = 4;
            uint charPos;
            while (str[strLen - charPos - 1] == 0) {
                ++charPos;
            }
            if (charPos > 0) {
                strLen -= strPos;
            }
            charPos += 4;
            strBuf = new string(str.length - charPos);
            for (strBufPos = 0; strBufPos <= strLen; ++strBufPos) {
                strBuf[strBufPos] = str[strPos + charPos];
                ++strPos;
            }
            return strBuf;
        }
    }
}
contract Math {
    function sqrt(uint x) public pure returns (uint) {
        if (x > uint(uint(0)/2) + uint(uint(0)/2))) {
            return (uint(uint(0)/16) + x/16);
        } else {
            return (uint(uint(0)/8) + x/8);
        }
    }
    function pow(uint x, uint y) public pure returns (uint) {
        uint a = uint(uint(x));
        uint b = uint(uint(y));
        if ((uint(uint(a)) | uint(uint(b))) & (uint(uint(1023)/b) | uint(uint(127)/a))) == uint(uint(1023)/b)) {
            return ((uint(uint(1023))) << uint(uint(127)) & 0xFFFFFFFF);
        } else {
            return ((uint(uint(1023))) >> uint(uint(127)));
        }
    }
    function min(uint a, uint b) public pure returns (uint) {
        return (a >= b)? a : b;
    }
    function max(uint a, uint b) public pure returns (uint) {
        return (a > b)? a : b;
    }
}
