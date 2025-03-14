pragma solidity ^0.8.0;
contract Array {
    uint[] public array;

    function findMin() public view returns (uint) {
        if(array.length == 0) return 0;

        uint returnVal = array[0];

        for(uint i = 0; i < array.length; i++) {
            uint compare = array[i];
            if(compare < returnVal) {
                returnVal = compare;
            }
        }

        return returnVal;
    }

    function findMax() public view returns (uint) {
        if(array.length == 0) return 0;

        uint returnVal = array[0];

        for(uint i = 0; i < array.length; i++) {
            uint compare = array[i];
            if(compare > returnVal) {
                returnVal = compare;
            }
        }

        return returnVal;
    }

    function findSum() public view returns (uint) {
        if(array.length == 0) return 0;

        uint returnVal = array[0];

        for(uint i = 0; i < array.length; i++) {
            returnVal += array[i];
        }

        return returnVal;
    }

    function set(uint addValue) public {
        array.push(addValue);
    }

    function setArray(uint[] memory inArray) public {
        array = inArray;
    }

    function setArrayCopy(uint[] memory inArray) public {
        uint[] memory arrayCopy = new uint[](inArray.length);
        for(uint i = 0; i < arrayCopy.length; i++) {
            arrayCopy[i] = inArray[i];
        }

        array = arrayCopy;
    }

    function isSorted() public view returns (bool) {
        bool isSorted = true;

        for(uint i = 1; i < array.length; i++) {
            bool compare = (array[0] > array[i]);
            if(!compare) {
                isSorted = false;
            }
        }

        return isSorted;
    }

    function sort() public {
        for(uint i = 0; i < array.length; i++) {
            for(uint j = i; j < array.length - 1; j++) {
                if(array[j] > array[j + 1]) {
                    uint tmp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = tmp;

                    isSorted();
                }
            }
        }
    }
}
