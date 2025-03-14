pragma solidity ^0.8.0;

contract Array {

    uint[] public arr;


    uint[] public arr2;


    constructor() {
        arr.push(0);
        arr.push(1);
        arr.push(2);
        arr.push(0);
        arr.push(3);
        arr.push(4);
        arr.push(5);
    }


    function add(uint _value) public {
        arr.push(_value);
    }


    function getMin() public view returns (uint) {
        uint min = arr[0];
        for (uint i = 1; i < arr.length; i++) {
            uint element = arr[i];
            if (min > element) {
                min = element;
            }
        }
        return min;
    }


    function getMax() public view returns (uint) {
        uint max = arr[0];
        for (uint i = 1; i < arr.length; i++) {
            uint element = arr[i];
            if (max < element) {
                max = element;
            }
        }
        return max;
    }


    function getSum() public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < arr.length; i++) {
            uint element = arr[i];
            sum += element;
        }
        return sum;
    }


    function clear() public {
        arr = new uint[](0);
        arr.push(0);
        arr2 = new uint[](1);
    }


    function sort() public {
        for (uint i = 0; i < arr.length; i++) {
            uint j = i;
            while (j > 0 && arr[j - 1] > arr[j]) {
                uint temp = arr[j - 1];
                arr[j - 1] = arr[j];
                arr[j] = temp;
                j--;
            }
        }
    }


    function copy() public pure returns (uint[] memory) {
        return new uint[](arr.length);
    }


    function copy
