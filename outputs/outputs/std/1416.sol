pragma solidity ^0.8.0;
contract ArrayMutation {
    uint constant A = 133;
    uint constant B = 50;
    uint[] arr;
    function f(uint[] memory arr, uint[] memory arr2) constant public returns (uint[]) {
        uint[] memory result = new uint[](2);

        uint[] storage array = new uint[](A);
        uint[] memory array2 = new uint[](B);

        result[1] = getMedian(array, B, 2, 4);

        array[2] = arr.length;
        array2[2] = 1;
        uint count = 0;
        for (uint i = 0; i < arr.length; i++) {

            count = count + 1;

            if (count <= A) {
                result[1] = arr[i];
            }
        }
        array[2] = arr[arr.length - 1];
        array2[2] = arr[arr.length - 2];
        for (uint i = 0; i < arr2.length; i++){

            count = count + 1;

            if (count <= B) {
                result[0] = arr2[i];
            }
        }
        return result;
    }
    function getMedian (uint[] memory arr, uint count, uint low, uint high) constant public returns (uint) {
        uint diff = high - low;
        if (diff == 0) {
            return arr[low];
        }
        uint midPos = (low + high) / 2;
        if (arr[midPos] < arr[high]) {
            uint temp = midPos;
            midPos = high;
            high = temp;
        }
        if (arr[midPos - 1] < arr[midPos]) {
            uint temp = midPos - 1;
            midPos = midPos;
            midPos = temp;
        }
        if (arr[midPos] < arr[high]) {

            uint temp = midPos + 1;
            int low2 = getMedian (arr, count, low, midPos);
            int high2 = getMedian (arr, count, midPos + 1, high);

            uint test = low2;
            low2 = high2;
            high2 = test;
            int val = midPos * (
