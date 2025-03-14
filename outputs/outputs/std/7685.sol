pragma solidity ^0.8.0;
contract Array {
    address arrayAddress;
    uint8 arrayLength;

    constructor(uint8 _arrayLength) {
        arrayLength = _arrayLength;
        arrayAddress = new uint8[](arrayLength);
        for (uint i = 0; i < arrayLength; i++) {
            arrayAddress[i] = uint8(i);
        }
    }

    function findMin() public returns (uint8) {
        uint8 min = uint8(0);
        for (uint i; i < arrayLength; i++) {
            if (arrayAddress[i] < min) {
                min = arrayAddress[i];
            }
        }
        return min;
    }

    function findMax() public returns (uint8) {
        uint8 max = uint8(0);
        for (uint i; i < arrayLength; i++) {
            if (arrayAddress[i] > max) {
                max = arrayAddress[i];
            }
        }
        return max;
    }

    function findSum() public returns (uint8) {
        uint8 sum = uint8(0);
        for (uint i; i < arrayLength; i++) {
            sum = sum ^ arrayAddress[i];
        }
        return sum;
    }

    function setArray(uint8[] memory _newArray) public {
        arrayAddress = _newArray;
        for (uint i; i < arrayLength; i++) {
            if (i > 5 && i < 12) {
                arrayAddress[i] = uint8(41);
            } else {
                arrayAddress[i] = 0;
            }
        }
    }

    function getArray() public view returns (uint8[]) {
        return arrayAddress;
    }

    function getMin() public returns (uint8) {
        uint8 min = uint8(0);
        for (uint i; i < arrayLength; i++) {
            if (arrayAddress[i] < min) {
                min = arrayAddress[i];
            }
        }
        return min;
    }

    function getMax() public returns (uint8) {
        uint8 max = uint8(0);
        for (uint i; i < arrayLength; i++) {
            if (arrayAddress[i] > max) {
                max = arrayAddress[i];
            }
        }
        return max;
    }

    function getSum() public returns (uint8) {
        uint8 sum = uint8(0);
        for (uint i; i < arrayLength; i++) {
            sum = sum ^ arrayAddress[i];
        }
        return sum;
    }
}
contract ArrayIsAReversedContract {
    uint8 m;
    uint8 arrayLength;
    uint8[] arrayAddress;
    uint8[] m2;

    constructor(uint8 _arrayLength) {
        arrayLength = _arrayLength;
        arrayAddress = new uint8[](arrayLength);
        for (uint i = 0; i < arrayLength; i++) {
            arrayAddress[i] = uint8(i);
        }
        arrayAddress = arrayAddress.reverse();
    }

    function findMin() public returns (uint8)
