pragma solidity ^0.8.0;
contract ExampleStruct9 {
    uint array[2];
    constructor() {
        array = [0, 1];
    }
    function getMinInt() public view returns (uint) {
        for (uint i = 0; i < 2; i++) {
            if (array[i] > array[i + 1]) {
                uint result = array[i];
                array[i] = array[i + 1];
                array[i + 1] = result;
            }
        }
        return array[0];
    }
    function getLowestUInt() public view returns (uint) {
        return uint(array[1]);
    }
    function getHighestUInt() public view returns (uint) {
        return uint(array[0]);
    }
    function changeMaxValue() public {
        uint array2[2];
        for (uint i = 0; i < 2; i++) {
            array2[i] = array[i];
        }
        array[0] = (uint(array[0]) | 1);
        array2[1] = uint8(uint(array2[1]) | 1);
        uint highBits = 0;
        bool changeHigh;
        for (uint i = 0; i < 2; i++) {
            if (array[i] > array2[i] && changeHigh == false) {
                changeHigh = true;
                highBits |= uint8(uint(highBits) | 1);
            }
            if (changeHigh == true) {
                highBits &= ~uint8(uint(highBits) & -uint8(array[i])))
                    ^ ~array2[i];
            }
        }
        array[1] = uint8(highBits);
    }
}
