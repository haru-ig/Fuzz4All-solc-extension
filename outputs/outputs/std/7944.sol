pragma solidity ^0.8.0;
contract Array_sol {
    uint256 constant COUNT = 5;
    uint256 count;
    uint256 a;
    Array_sol array;

    constructor(uint256 _count) {
        count = 0;
        a = 0;
    }

    function () {
        return a;
    }

    function arraySize() public view returns (uint256) {
        return count;
    }

    function changeArray(uint256 _count) public {
        a = _count;
        count = _count;
    }

    function setCount(uint256 _newCount) public {
        count = _newCount;
    }

    function setArray(uint256 _newCount) public {
        count = _newCount;
        array.setCount(_newCount);
    }

    function sum() public view returns (uint256) {
        uint256 sum = 0;
        uint256 i;
        for (i = 1; i <= count; i++) {
            sum = sum + array_[i];
        }
        return sum;
    }

    function minIndex() public view returns (uint256) {
        uint256 minIndex;
        uint256 j;

        for (j = 1; j <= count; j++) {
            if (array_[j] < array_[minIndex]) {
                minIndex = j;
            }
        }

        return minIndex;
    }

    function maxIndex() public view returns (uint256) {
        uint256 maxIndex;
        uint256 j;

        for (j = 1; j <= count; j++) {
            if (array_[j] > array_[maxIndex]) {
                maxIndex = j;
            }
        }

        return maxIndex;
    }
}
