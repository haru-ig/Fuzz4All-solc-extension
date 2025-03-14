pragma solidity ^0.8.0;
import "contracts/Math.sol";
abstract contract Array is Math {
    uint[] array;
    uint capacity;
    uint private offset;
    bool initialized;


    constructor() {
        capacity = 10;
        array = new uint[](capacity);
        initialized = true;
        offset = 0;
    }

    function set(uint i, uint v) public {
        require(i < capacity);
        array[i + offset] = v;
    }
    function get(uint i) public view returns (uint) {
        require(i < capacity);
        return array[i + offset];
    }
    function getArray() public view returns (uint[] memory) {
        if (!initialized) {
            initialize();
        }
        return array;
    }

    function sortArray() public {
        require(initialized);
        for (uint i = offset + 1; i < capacity; ++i) {
            if (array[i] < array[i - offset]) {
                uint temp = array[i];
                array[i] = array[i - offset];
                array[i - offset] = temp;
            }
        }
    }
    function sortDescending() public {
        require(initialized);
        for (uint i = 0; i < capacity; ++i) {
            if (array[i] > array[i + offset]) {
                uint temp = array[i];
                array[i] = array[i + offset];
                array[i + offset] = temp;
            }
        }
    }
    function sortArrayDescending() public {
        uint[] memory result = getArray();
        uint count = capacity;
        for (uint i = offset + 1; i < capacity; ++i) {
            if (result[i] < result[i - offset] || result[i] < result[i + offset]) {
                uint temp = result[i];
                result[i] = result[i + offset];
                result[i + offset] = temp;
                count--;
            }
        }
        if (count < capacity) {
            for (uint i = 0; i < capacity - count; ++i) {
                result[i] = result[i + count];
            }
            offset += capacity - count;
        }
    }
    function initialArray() public {
        uint[] memory temp = new uint[](capacity);
        for (uint i = 0; i < temp.length; ++i) {
            temp[i] = i;
        }
    }
}
contract Main {
    Array public array;
    bool[] values;

    constructor() {
        array = new Array();
    }

    function set(uint i, uint v) public {
        array.set(i, v);
    }

    function get(uint index) public view returns (uint) {
        return array.get(index);
    }

    function getArray() public view returns (uint[] memory) {
        return array.getArray();
    }

    function check(uint i) public view returns (bool) {
        return values[i];
    }
