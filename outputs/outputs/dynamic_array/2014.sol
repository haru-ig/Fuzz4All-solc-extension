pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_2 is FunctionalEquivalence_DynamicallySizedArrayAssignment_1 {
    constructor(uint256 _arrSize) public {
        uint256[] memory arr = new uint256[](_arrSize);
        arr[0] = 1;
        for (uint8 _i = 1; _i < _arrSize; _i++) {
            arr[_i] = arr[_i-1] + 1;
        }
        arr[_arrSize - 1] = 90;
        for (uint8 _i = _arrSize - 3; _i >= 0; _i--) {
            arr[_i+1] = arr[_i+1] + 1;
        }
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_3 is FunctionalEquivalence_DynamicallySizedArrayAssignment_2, FunctionalEquivalence_DynamicallySizedArrayAssignment_1 {
    constructor(uint256 _arrSize) public {
        uint256[] memory arr = new uint256[](_arrSize);
        arr[0] = 2;
        for (uint8 _i = 1; _i < _arrSize; _i++) {
            arr[_i] = arr[_i-1] + 1;
        }
        arr[_arrSize - 1] = 92;
        arr[_arrSize - 2] = 98;
        uint256[] memory reversedArr = new uint256[](_arrSize);
        for (uint8 _i = 0; _i < _arrSize; _i++) {
            reversedArr[_arrSize - 1 - _i] = arr[_i];
        }
        for (uint8 i = 0; i < _arrSize/2; i++) {
            reversedArr[i] = arr[i];
            reversedArr[i + _arrSize/2] = arr[i + _arrSize/2];
        }
    }
}
