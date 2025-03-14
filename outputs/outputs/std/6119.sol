pragma solidity ^0.8.0;
contract Math {
    function min(uint32 x, uint32 y) public pure returns (uint32 c) {
        return x <= y? x : y;
    }
    function max(uint32 x, uint32 y) public pure returns (uint32 c) {
        return x >= y? x : y;
    }
}
contract Array {
    uint32[5] myArray;
    uint32 min(uint32 x, uint32 y) public pure returns (uint32 result) {
        return x <= y? x : y;
    }
    function max(uint32 x, uint32 y) public pure returns (uint32 result) {
        return x >= y? x : y;
    }
    function min_01(uint32[] memory array) public pure returns (uint32 c) {
        uint32 result; uint32 _min; bool _compared; for (uint256 i = 0; i < array.length; i++) {
            c   = min(c, array[i]);
            if (!(_compared = array[i] < c)) break;
            result = _min; _min = c;
        }
        return result < _min? result : _min;
    }
    function max_01(uint32[] memory array) public pure returns (uint32 c) {
        uint32 result; uint32 _max; bool _compared; for (uint256 i = 0; i < array.length; i++) {
            c   = max(c, array[i]);
            if (!(_compared = array[i] > c)) break;
            result = _max; _max = c;
        }
        return result > _max? result : _max;
    }
    function get(uint32[] memory array) public pure returns (uint32 element, uint32 i) {
        element   = array[0];
        i  = 0;
        for (uint256 j = 1; j < array.length; j++) { array[j - 1] = array[j]; }
    }
    function set(uint32[] memory source, uint32[] memory dest) public {
        set(source, dest, 0);
    }
    function set(uint32[] memory source, uint32[] memory dest, uint32 offset) public {
        require(source.length == dest.length, "source length must equal dest length");
        for (uint256 i = 0; i < source.length; i++) {
            dest[i + offset] = source[i];
        }
    }
    function sort(uint32[] memory array) public pure returns (uint32[] memory) {
        uint32[] memory temporary; array.sort(); uint32[] memory result = temporary; for (uint256 i =
