pragma solidity ^0.8.0;
contract Array {
    function findMinElement(uint[] memory arr) public pure returns (uint) {
        for (uint i = 0; i < arr.length; i++) {
            if (arr[i] < arr[i+1]) {
                if (arr[i] == arr[i+1]) {
                    return 0;
                } else {
                    return arr[i];
                }
            }
        }
        return 1;
    }
    function findMaxElement(uint[] memory arr) public pure returns (uint) {
        for (uint i = 1; i < arr.length; i++) {
            if (arr[i] < arr[i-1]) {
                if (arr[i] == arr[i-1]) {
                    return arr.length-1;
                } else {
                    return arr[i];
                }
            }
        }
        return arr.length-1;
    }
    function minMaxSum(uint[] memory arr) public pure returns (uint, uint, uint) {
        uint min = arr.length;
        uint max = 0;
        uint sum = 0;
        for (uint i = 0; i < arr.length; i++) {
            if (arr[i] > max) {
                max = arr[i];
            }
            if (arr[i] < min) {
                min = arr[i];
            }

            sum += arr[i];
        }
        return (min, max, sum);
    }
    function set(uint index, uint value, uint[] memory arr) public pure returns (uint[] memory) {
      arr[index] = value;
      return arr;
    }
    function get(uint index, uint[] memory arr) public pure returns (uint) {
      return arr[index];
    }
    function length(uint[] memory arr) public pure returns (uint) {
      return arr.length;
    }
    function slice(uint fromIndex, uint toIndex, uint[] memory arr) public pure returns (uint[] memory) {
      return arr.slice(fromIndex, toIndex);
    }
    function sort(uint[] memory arr) public pure returns (uint[] memory) {
      sortInner(arr, false);
    }
    function sortByDescending(uint[] memory arr) public pure returns (uint[] memory) {
      sortInner(arr, true);
    }

    function sortInner(uint[] memory arr, bool decending) private {
      for (uint i = 0; i < arr.length; i ++) {
        uint min = i;
        if (decending) {
            for (uint j = i; j < arr.length; j++) {
                if (arr[j] > arr[min]) {
                  min = j;
                }
            }
        } else {
            for (uint j = i; j < arr.length; j++) {
                if (arr[j] < arr[min]) {
                  min = j;
                }
            }
        }
        uint temp = arr[i]; arr[i] = arr[min]; arr[min] = temp;
      }
  }
  function concat(uint[] memory arr1, uint[] memory arr2) public pure returns (
