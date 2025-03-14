pragma solidity ^0.8.0;
contract ExampleStruct10 {
    uint8[2] array;
    constructor() {
        array = [0, 1];
    }
    function getMaxInt() public view returns (uint8) {
        return uint8(array[0]);
    }
    function getHighestUInt() public view returns (uint) {
        return uint(array[1]);
    }
    function getLowestUInt() public view returns (uint) {
        return uint(array[0]);
    }
    function changeMaxValue(uint8 newMaxValue) public {
        uint tmp = uint(array[1]);
        uint8 tmp2 = uint8(newMaxValue);
        uint8 tmp3 = uint8(tmp2);
        uint8 modValue = uint8(tmp % 256);
        array[0] = uint8(modValue);
        array[1] = uint8(modValue ^ tmp2);
    }
}
