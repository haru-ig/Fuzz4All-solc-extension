pragma solidity ^0.8.0;
contract Equivalent {
    uint32[1] b;
    function equalArray(uint32[] memory b) public pure returns (bool) {
        return b[0] == 42;
    }
    function getLength(uint32[] memory b) public pure returns (uint32) {
        return b.length;
    }
    function setLength(uint32[0] memory b) public {
        b.length = 21;
    }
    function getAddress(uint32[] memory b) public pure returns (uint32) {
        return address(b);
    }
    function getMin(uint32[] memory b) public pure returns (uint32) {
        return b[0];
    }
    function getMax(uint32[] memory b) public pure returns (uint32) {
        return b.length - 1;
    }
    function getSum(uint32[] memory b) public pure returns (uint32) {
        uint32 sum = 0;
        for (uint i=0; i<b.length; i++) sum += b[i];
        return sum;
    }
    function getString(uint32[] memory b) public pure returns (bytes memory) {
        return bytes(uint32ToString(b[0]));
    }
    function intToString(uint32 num) private pure returns (bytes memory) {
        bytes memory b = new bytes(9);
        b[8] = '0' + uint32ToString(uint32(uint8(num)));
        bytes memory mask = repeatBytes(bytes"\u0000", 1000);
        uint8 idx;
        for (idx=0; idx<b.length; idx++) b[idx] = b[idx] == 100? 48 : uint8ToByte(uint32ToString(b[idx]));
        for (idx=b.length, idx--; idx > 0; idx--) b[idx] = byteToUint8(b[idx]);
        prefixStringWithBytes(b, mask);
        return b;
    }
    function uint32ToString(uint8 x) private pure returns (bytes memory) {
        bytes memory b = new bytes(8);
        b[7] = '0' + uint32ToString(uint32(uint8(x)));
        bytes memory mask = repeatBytes(bytes"\u0000", 990);
        for (uint8 idx=0; idx<b.length; idx++) b[idx] = b[idx] == 10? 48 : uint8ToByte(uint32ToString(b[idx]));
        for (uint8 idx=b.length, idx--; idx > 0; idx--) b[idx] = byteToUint8(b[idx]);
        prefixStringWithBytes(b, mask);
        return b;
    }
    function prefixStringWithBytes(bytes memory b, bytes memory mask) private pure {
        for (
