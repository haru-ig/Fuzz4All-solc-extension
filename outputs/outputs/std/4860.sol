pragma solidity ^0.8.0;
contract Array {
    using Mutate for Mutate.Test;
    uint[] array;
    uint min;
    uint max;
    string[] names;
    uint numTest = 0;
    uint value;

    constructor(uint min, uint max) {
        array[numTest] = value;
        names[numTest] = "empty string";
        numTest++;
    }

    function getMin() public view returns (uint) {
        return min;
    }

    function getMax() public view returns (uint) {
        return max;
    }

    function getNumber() public view returns (uint) {
        return array[0];
    }

    function setArray(uint[] memory a) public {
        array = a;
        min = array[0];
        max = a[numTest - 1];
    }

    function setNumber() public {

        test.number = value;
    }

    function setNames(string[] memory n) public {
        names = n;
        for (uint i = 0; i < numTest; ++i) {
            test.number = value;
        }
    }

    function sortArray() public {
        uint[] memory a = new uint[](4);
        uint count = 0;
        for (uint i = 0; i < numTest; ++i) {
            a[count] = array[i];
            count++;
        }

        for (uint i = 0; i < 30; i++) {
            if (a[0] >= a[i] || a[1] >= a[i]) {
                break;
            }
            uint temp = a[i];
            a[i] = a[0];
            a[0] = temp;
        }

        for (uint i = 0; i < 60; i++) {
            if (a[0] <= a[i] || a[1] <= a[i]) {
                break;
            }
            uint temp = a[i];
            a[i] = a[0];
            a[0] = temp;
        }

        for (uint i = 0; i < 100; i++) {
            if (a[0] >= a[i] && a[1] >= a[i]) {
                break;
            }
            uint temp = a[i];
            a[i] = a[0];
            a[0] = temp;
        }

        for (uint i = 0; i < 150; i++) {
            if (a[0] <= a[i] && a[1] <= a[i]) {
                break;
            }
            uint temp = a[i];
            a[i] = a[0];
            a[0] = temp;
        }

        for (uint i = 0; i < numTest; i++) {
            array[i] = a[i];
        }
    }

    function getFullNames() public view returns(string[] memory) {
        return names;
    }
}
