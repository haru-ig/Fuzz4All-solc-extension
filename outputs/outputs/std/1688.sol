pragma solidity ^0.8.0;
contract Array {
    struct ArrayStorage {
        Array storage array;
        uint length;
    }
    ArrayStorage arrayStorage;

    function getLength() public view returns (uint) {
        return arrayStorage.length;
    }

    function getMinElem() public view returns (uint) {
        uint minArrElem;
        require(getLength() > 0, "Empty array");
        for (uint i = 0; i < getLength(); ++i) {
            if (arrayStorage.array[i] < minArrElem) {
                minArrElem = arrayStorage.array[i];
            }
        }
        return minArrElem;
    }

    function getMaxElem() public view returns (uint) {
        uint maxArrElem;
        require(getLength() > 0, "Empty array");
        for (uint i = 0; i < getLength(); ++i) {
            if (arrayStorage.array[i] > maxArrElem) {
                maxArrElem = arrayStorage.array[i];
            }
        }
        return maxArrElem;
    }

    function getMaxIndex() public view returns (uint) {
        require(getLength() > 0, "Empty array");
        uint maxIndex = 0;
        for (uint i = 0; i < getLength(); i++) {
            if (arrayStorage.array[i] > arrayStorage.array[maxIndex]) {
                maxIndex = i;
            }
        }
        return maxIndex;
    }

    function getSumOfElements() public view returns (uint) {
        uint sumSoFar = 0;
        require(getLength() > 0, "Empty array");
        for (uint i = 0; i < getLength(); i++) {
            sumSoFar = sumSoFar + arrayStorage.array[i];
