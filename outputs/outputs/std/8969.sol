pragma solidity ^0.8.0;
contract ExampleStruct9 {
    uint8[2] array;
    constructor() {
        array = [0, 1];
    }
    function getMinInt() public view returns (uint8) {
        return uint8(array[0]);
    }
    function getLowestUInt() public view returns (uint) {
        return uint(array[1]);
    }
    function getHighestUInt() public view returns (uint) {
        return uint(array[0]);
    }
    function changeMaxValue() public {
        uint8 tmp = array[1];
        array[1] = uint8(uint(array[1]) | 1);
        array[0] = tmp;
    }
}
