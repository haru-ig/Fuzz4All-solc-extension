pragma solidity ^0.8.0;
contract Convert {
    function toUint32(uint v) public pure returns (uint) {
        return v;
    }
    function toString(uint v, uint digits) public pure returns (string memory) {
        string memory buffer = "";
        while(v >= 1) {
            uint digit = v % 10;
            v /= 10;
            buffer = digit.toString() + buffer;
        }
        string memory ret = "0";
        uint x = buffer.length;
        if(digits >= x) {
            for (uint i = digits - 1; i >= 0; i--) {
                ret = ret.concat("0");
            }
            return ret;
        }
        for(uint i = buffer.length - 1; i >= digits; i--) {
            buffer =buffer.concat("0");
        }
        uint b = digits - buffer.length;
        for(uint i = 0; i < b; i++) {
            buffer =buffer.concat("0");
        }
        digits =digits - b;
        for(uint i = 0; i < digits; i++) {
            buffer =buffer.concat("0");
        }
        return buffer;
    }
}
