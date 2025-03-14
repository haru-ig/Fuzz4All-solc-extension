pragma solidity ^0.8.0;
contract Array {
    function sum_array(uint256[] memory) public view returns (uint256) {
        uint256 i;
        uint256 sum_int = 0;
        for (i = 0; i < length(arr); i++) {
            sum_int += arr[i];
        }
        return sum_int;
    }
    function min_array(uint256[] memory) public view returns (uint256) {
        uint256 min = arr[0];
        for (uint256 i = 1; i < length(arr); i++) {
            if (arr[i] < min) {
                min = arr[i];
            }
        }
        return min;
    }
    function max_array(uint256[] memory) public view returns (uint256) {
        uint256 max = arr[0];
        for (uint256 i = 1; i < length(arr); i++) {
            if (arr[i] > max) {
                max = arr[i];
            }
        }
        return max;
    }
}

pragma solidity ^0.8.0;
contract ArrayMemory is Array {
    uint256[] public arr;
    function add_at(uint256 index, uint256 number) public {
        arr[length(arr) + index] = number;
    }
    function min_index_at(uint256 index) public view returns (uint256) {
        return index;
    }
    function max_index_at(uint256 index) public view returns (uint256) {
        return length(arr) - 1 - index;
    }
    function length_of_arr() public view returns (uint256) {
        return length(arr);
    }
}
