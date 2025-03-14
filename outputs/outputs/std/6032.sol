pragma solidity ^0.8.0;
library Array {
    function safeMax(uint a, uint b) internal pure returns (uint) { return a > b? a : b; }
    function safeMin(uint a, uint b) internal pure returns (uint) { return a < b? a : b; }
    function safeLength(uint[] storage arr) internal view returns (uint) {
        uint len = arr.length;
        require(len > 0, 'Array is empty');
        return len;
    }
    function get(uint i, uint[] storage arr) internal view returns (uint) {
        return arr[arr.length.sub(i).toUint()];
    }
    function set(uint i, uint e, uint[] storage arr) internal pure {
        arr[arr.length.sub(i).toUint()] = e;
    }
}
