pragma solidity ^0.8.0;

library Array {
    function max(uint64[] memory values) internal pure returns (uint64) {
        if (values.length == 0) {
            return 0;
        } else if (values.length == 1) {
            return values[0];
        }
        uint64 maxVal = values[0];
        for (uint64 i = 1; i < values.length; ++i) {
            if (maxVal < values[i]) {
                maxVal = values[i];
            }
        }
        return maxVal;
    }

    function min(uint64[] memory values) internal pure returns (uint64) {
        if (values.length == 0) {
            return 0;
        } else if (values.length == 1) {
            return values[0];
        }
        uint64 minVal = values[0];
        for (uint64 i = 1; i < values.length; ++i) {
            if (minVal > values[i]) {
                minVal = values[i];
            }
        }
        return minVal;
    }
    function sum(uint64[] memory values) internal pure returns (uint64) {
        uint64 sum = 0;
        for (uint64 i = 0; i < values.length; i++){
            sum += values[i];
        }
        return sum;
    }

    function set(uint64[] storage array, uint64 idx, uint64 val) internal {
        array[idx] = val;
    }
    function get(uint64[] memory array, uint64 idx) public pure returns (uint64) {
        return array[idx];
    }

    function isEmpty(uint64[] memory array) external view returns (bool) {
        return array.length == 0;
    }

    function sort(uint64[] storage array, uint256 from, uint256 to) internal {
        uint256 i;
        for (i = to; i > from; i--) {
            if(array[from] > array[i]){
                Array.swap(array, from, i);
            }
        }
    }
    function swap(uint64[] storage array, uint256 i, uint256 j) internal {
        uint64 t;
        (t, array[i]) = (array[
