pragma solidity ^0.8.0;
contract ExampleStruct36 {
    uint8[3] array;
    constructor() {
        array = [0, 1, 2];
    }
    function getHighestFloat() public view returns (float) {
        return array[0];
    }
    function getLowestFloat() public view returns (float) {
        return array[2];
    }
    function changeMaxValue() public {
        float tmp = array[1];
        bool tmpBool = array[1] < 2;
        array[1] = array[1] +.0001;
        array[2] = array[2] + 0.0001;
        array[0] = array[2];
    }
    function increaseArray() public {
        array.length++;
    }
}
