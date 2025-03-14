pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_2 {
    constructor(uint256 _arrSize) public {
        uint256[] storage arr = new uint256[](_arrSize);
        arr[0] = 1;
        for (uint8 _i = 1; _i < _arrSize; _i++) {
            arr[_i] = arr[_i-1] + 2;
        }
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5 {
    uint256[] public arrData_2;

    constructor(uint256 _arrLength) public {
        uint256[] memory arrData_0 = new uint256[](_arrLength);
        for (uint256 i = 0; i < _arrLength; i++) {
            arrData_0[i] = i;
        }
        arrData_2 = arrData_0;
    }

    function update_arrData_2(uint256 _arrLength) public {
		uint256[] storage arrData_2_storage = arrData_2;
        uint256[] memory arrData_1 = new uint256[](_arrLength);
        for (uint256 i = 0; i < _arrLength; i++) {
            arrData_1[i] = i + 2;
        }
        arrData_2_storage = arrData_1;
    }

}
