pragma solidity ^0.8.0;


contract Array {
    bytes32 internal constant HEX_PREFIX = "0x";
    bytes internal constant BYTE = "0x01", SHORT = "0x1234", INT = "0xfffffffffffffd", LONG = "0xffffffffffffffff";
    mapping(address => uint256) public map;


    function set(uint256[] memory arr, uint256 index, uint256 value) external {
        arr[index] = value;
    }


    function get(uint256[] memory arr, uint256 index) public returns (uint256) {
        return arr.length > uint256(index)? arr[index] : 0;
    }


    function getMin(uint256[] memory arr) public returns (uint256) {
        return arr.length > 0? arr[0] : 0;
    }


    function getMax(uint256[] memory arr) public returns (uint256) {
        return arr.length > 0? arr[arr.length - 1] : 0;
    }


    function getSum(uint256[] memory arr) public returns (uint256) {
        uint256 _sum;
        for (uint256 i = 0; i < arr.length; i++) {
            _sum += arr[i];
        }
        return _sum;
    }


    function sort(uint256[] memory arr) internal {
        uint256 minPosition;
        uint256 right;
        uint256 left;
        for (uint256 i = 0; i < arr.length - 1; i++) {
            minPosition = i;
            right = i + 1;
            while (left < right) {
                if (arr[left] < arr[right]) {
                    left++;
                } else if (arr[left]
