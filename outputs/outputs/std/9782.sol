pragma solidity ^0.8.0;
contract Array {
    function findFirstMinElement(uint256[] memory arr) public pure returns (uint) {
        uint minimum = uintMAX;
        uint i = 0;
        while (arr[i] < minimum) {
            minimum = arr[i];
            i = i.add(1);
        }
        return i;
    }
    function findFirstMinElementV3(uint256[] memory arr) public pure returns (uint) {
        uint minimum = uintMAX;
        uint i = 0;
        while (arr[i] < minimum) {
            minimum = uint(arr[i]);
            i = i.add(1);
        }
        return i;
    }
    function findFirstMinElementV2(uint256[] memory arr) public pure returns (uint) {
        uint minimum = uintMAX;
        uint i = 0;
        while (arr[i] < minimum) {
            minimum = uint256(arr[i]);
            i = i.add(1);
        }
        return i;
    }
    function findFirstMaxElement(uint256[] memory arr) public pure returns (uint) {
        uint maximum = uintMIN;
        uint i = 0;
        while (arr[i] > maximum) {
            maximum = arr[i];
            i = i.add(1);
        }
        return i;
    }
    function findFirstMaxElementV3(uint256[] memory arr) public pure returns (uint) {
        uint maximum = uintMIN;
        uint i = 0;
        while (arr[i] > maximum) {
            maximum = uint(arr[i]);
            i = i.add(1);
        }
        return i;
    }
    function findFirstMaxElementV2(uint256[] memory arr) public pure returns (uint) {
        uint maximum = uintMIN;
        uint i = 0;
        while (arr[i] > maximum) {
            maximum = uint256(arr[i]);
            i = i.add(1);
        }
        return i;
    }
    function findFirstSumElement(uint256[] memory arr) public pure returns (uint) {
        uint sum = 0;
        uint i = 0;
        while (arr[i] > 0) {
            sum = sum.add(arr[i]);
            i = i.add(1);
        }
        return sum;
    }
    function sumElements(uint256[] memory arr) public pure returns (uint) {
        return sumElementsV3(sumElementsV2(arr));
    }
    function sumElementsV3(uint256 sum) public pure returns (uint) {
        return sum;
    }
    function sumElementsV2(uint256[] memory arr) public pure returns (uint) {
        uint sum = 0;
        uint i = 0;
        while (arr[i] > 0) {
            sum = sum.add(arr[i]);
            i = i.add(1);
        }
        return sum;
    }
    function sort(uint256
