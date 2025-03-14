pragma solidity ^0.8.0;
contract MutatedDynamicArrays16 {
    uint256[] public emptyElements;
    uint256[9] public array;
    uint256 constant numElements = 14;
    uint256 constant startValue = 150;
    uint256 constant endValue = 400;

    constructor() public {
        emptyElements = [400, 200, 400, 100, 120, 500, 400, 700, 150, 400, 400, 100];
        array = [startValue, startValue, startValue, startValue, startValue, startValue, startValue, startValue, startValue, startValue, startValue, startValue, startValue];

        for (uint256 i = 0; i < numElements; i++) {
            array[uint256(uint8(i)) % 9] += startValue;
        }
    }
    function use() public {
        uint256 sizeInArray = uint256(uint8(emptyElements.length));

        for (uint256 i = 0; i < sizeInArray - 1; i++) {
            emptyElements[i] = emptyElements[i + 1];
        }
        emptyElements[sizeInArray - 1] = endValue;
        emptyElements = [150, 100, 90, 50, 20, 80, 40, 70, 90, 60, 30];
