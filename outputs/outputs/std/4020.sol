pragma solidity ^0.8.0;
contract Convert {
    function unsignedByte(bytes memory bytes_in) public pure returns (uint) {
        return bytes2uint(bytes_in);
    }
    function uint8ToByte(uint8 val) public pure returns (bytes memory) {
        bytes memory ret = new bytes(1);
        ret[0] = byte(val);
        return ret;
    }
    function uint32ToByte(uint32 val) public pure returns (bytes memory) {
        bytes memory ret = new bytes(4);
        ret[0] = byte(uint8(val >> 24));
        ret[1] = byte(uint8(val >> 16));
        ret[2] = byte(uint8(val >> 8));
        ret[3] = byte(uint8(val));
        return ret;
    }
    function numToUnsignedByte(uint num) public pure returns (bytes memory) {
        uint8 val = uint8(num);
        return uint8ToByte(val);
    }
    function bytes2uint(bytes memory bytes_in) public pure returns (uint) {
        uint val = 0;
        for (uint i = 0; i < bytes_in.length; i++) {
            uint char = uint8(uint8(bytes_in[i]));
            val += (char & 0xFF) * (256 ** i);
        }
        return val;
    }
    function bytes2string(bytes memory x) public pure returns (string memory) {
        if (x.length == 0) return "Empty";
        bytes memory b = new bytes(x.length);
        for (uint i = 0; i < x.length; i++) {
            b[x.length - i - 1] = uint8(x[i]);
        }
        return string(b);
    }
}
