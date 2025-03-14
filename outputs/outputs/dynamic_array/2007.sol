pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_1 {
    constructor(uint256 _arrSize) public {
        uint256[] memory arr = new uint256[](_arrSize);
        arr[0] = 0;


        for (uint8 _i = 1; _i < _arrSize; _i++) {
            arr[_i] = arr[_i-1] + 1;
        }
    }
}
