pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_2 {
    constructor(uint256 _arrSize) public {
        uint256[] memory initialArray = new uint256[](_arrSize);
        for (uint256 i = 0; i < initialArray.length; i++) {
            initialArray[i] = i;
        }
        uint256[] memory arr = initialArray;
        arr[_arrSize - 1] = 0;
        for (uint16 _i = _arrSize - 1; _i > 0; _i--) {
            arr[_i] = arr[_i - 1] + 1;
        }
    }
}
