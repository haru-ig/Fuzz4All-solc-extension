pragma solidity ^0.8.0;
library ArrayStorage {
    uint8[] array;
    function setMax(uint8 w) public {
        if (0 < w) {
            array[2] = w;
        }

    }

    function getMin() public view returns (uint8) {
        return array[0];
    }

    function set(uint8 b, uint256 i) public {
        if (uint256(b) <= array.length - 1) {
            array[b] = i;
        }
        if (array.length == i) {
            ArrayStorage.setMax(b);
        }
    }

    function getMax() public view returns (uint8) {
        return array[array.length - 1];
    }

    function getSize() public view returns (uint8) {
        return array.length;
    }

    function sort(uint max) public {
        for (uint i = 0; i < array.length; i++) {
            if (array[i] >= max) {
                for (uint j = i; j < array.length - 1; j++) {
                    array[j + 1] = array[j];
                }
                array[array.length - 1] = 0;
            }
        }
    }
}
