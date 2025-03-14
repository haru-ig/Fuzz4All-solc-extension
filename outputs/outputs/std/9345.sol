pragma solidity ^0.8.0;
contract Array
{
    function findMin(uint256[] memory _arr) public pure returns (uint256) {
        uint256 min = _arr[0];
        for (uint256 i = 1; i < _arr.length; i++) {
            if (_arr[i] < min) {
                min = _arr[i];
            }
        }
        return min;
    }
    function findMax(uint256[] memory _arr) public pure returns (uint256) {
        uint256 max = _arr[0];
        for (uint256 i = 1; i < _arr.length; i++) {
            if (_arr[i] > max) {
                max = _arr[i];
            }
        }
        return max;
    }
    function findSum(uint256[] memory _arr) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < _arr.length; i++) {
            sum += _arr[i];
        }
        return sum;
    }
    function getArray(uint256 elem0, uint256 elem1) public pure returns (uint256[] memory) {
        uint256 arr[2];
        arr[0] = elem0;
        arr[1] = elem1;
        return arr;
    }
    function getArray(uint256 elem0, uint256 elem1, uint256 elem2) public pure returns (uint256[] memory) {
        uint256 arr[3];
        arr[0] = elem0;
        arr[1] = elem1;
        arr[2] = elem2;
        return arr;
    }
    function checkValid(uint256[] memory _arr) public pure returns (bool) {
        bool validArr = true;
        uint256 idx;
        idx = _arr.length;
        while (idx > 0) {
            if (idx < _arr.length - 1) {
                if (_arr[0] > _arr[idx - 1] && _arr[1] > _arr[idx - 1]) {
                    validArr = false;
                }
                idx = idx.sub(1);
            } else {
                if (_arr[0] < _arr[idx - 1]) {
                    validArr = false;
                }
            }
        }
        return validArr;
    }
    function sort(
