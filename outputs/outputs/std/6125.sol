pragma solidity ^0.8.0;
library ConstantValue {
    struct ConstantValues {
        address[] public constantValues;
        uint32 constantValuesLength;
        uint8 constantValuesCount;
        uint32 constantValuesMaxIndex;
    }
    constructor(uint32 constantValuesCount) {
        uint32 constantValuesMaxIndex;
        while (constantValuesCount!= 0) {
            constantValuesMaxIndex--;
            constantValuesCount = constantValuesCount >> 1;
        }
        constantValuesMaxIndex++;
        ConstantValues memory constantValuesMemory = ConstantValues(constantValuesMaxIndex*2+1, constantValuesCount, constantValuesCount+1, constantValuesMaxIndex);
        for (uint32 i = 0; i < constantValuesCount; i++) {
            constantValuesMemory.constantValues[i] = contract(abi.addressToAccount(i));
        }
        constantValuesMaxIndex++;
        ConstantValues memory constantValuesMemory2 = ConstantValues(constantValuesMaxIndex*2+1, 1, 1, constantValuesMaxIndex);
        constantValuesMemory2.constantValues[constantValuesCount] = address(this);
        constantValuesLength= constantValuesCount;
        constantValuesMaxIndex++;
        constantValuesMemory2.constantValues[constantValuesCount+1] = address(this);
        constantValuesCount = constantValuesCount+2;
    }
    function getRandomNumberInInterval(uint32 count, uint32 interval) public view returns (uint32) {
        uint32 random = address(this).balance / (uint16(count) * interval);



        return min(max(random, 0), count);
    }
    function addConstantValue(address constantValues, uint32 constantValue) public {
        constantValues[constantValuesLength++] = constantValue;
    }
    function isConstantValues(address constantValues) public view returns (bool) {
        for (uint32 i = 0; i < constantValuesLength; i++) {
            if (constantValues[i] == constantValuesMemory2.constantValues[i]) {
                return true;
            }
        }
        return false;
    }
}
