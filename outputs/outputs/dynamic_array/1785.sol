pragma solidity ^0.8.0;

contract OverridingArray {

    uint256[16] public fixedSizeArray;
    uint256[] public fixedSizeDynamicArray;
    uint256[1] fixedArray;
    uint256[] public dynamicArray;

    function getArrayOffset() public view returns (uint256) {
        uint256 arrayOffset = 0;
        uint256 dynamicArrayLength = dynamicArray.length;
        uint256 fixedArrayLength = fixedArray.length;
        uint256 fixArrayBase;
        uint256 dynArrayBase;
        for (uint256 j = 0; j < dynamicArrayLength; ++j) {
            uint256 dynOffset = arrayOffset + getDynamicValueOffset(dynamicArray.length - j - 1);
            uint256 dynArrData = dynamicArray[j];
            dynArrayBase = dynOffset + dynArrayLength * dynArrData;
            if (dynArrData == 0) {
                dynArrayBase += arrayOffset;
                break;
            }
            fixArrayBase = dynOffset + dynArrData;
            while (dynArrData == dynamicArray[j + 1])
                ++j;
            if (j > 0) {
                fixArrayBase += arrayOffset + j * 4;
            }
            if (j == 0) {
                fixArrayBase += arrayOffset + (dynArrData < dynArray[j + 1])? dynArrData : dynArray[j] - dynArrData;
            }
            arrayOffset += getFixedLength(dynArrData);
            /*
            if (j == dynamicArrayLength - 1) {
                arrayOffset += getFixedArrayLength(dynArrData);
