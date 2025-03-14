pragma solidity ^0.8.0;
contract MutatedDynamicArrays14 {
    uint256[256] public dynamicArray16;
    uint256 constant numElements = 16;
    constructor() public {
        dynamicArray16 = new uint256[](numElements);
        dynamicArray16[3] = 150;
        dynamicArray16[2] = 155;
        dynamicArray16[1] = 156;
        dynamicArray16[10] = 160;
        dynamicArray16[1] = 162;
    }
    function use() public {
        dynamicArray16 = new uint256[](200);
        dynamicArray16[1] = 160;
        dynamicArray16[11] = 170;
    }
}
