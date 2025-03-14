pragma solidity ^0.8.0;
contract MutatedFunctionalEquivalence_DynamicallySizedArrayAssignment_4 {
    constructor(uint256 _arrSize) public {
        uint256[] storage arr;
        arr = new uint256[](_arrSize);
        for (uint256 i = 0; i <= _arrSize; i++) {
            arr[i] = 0;
        }
        arr[0] = 0;
        for (uint256 i = 1; i <= _arrSize; i++) {
            arr[i] = (arr.length**8+i)*(11**60000+70009);
        }
    }
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
        arr[idx] = val;
        return idx+1;
    }
}
contract A{
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
        arr[idx] = val;
        return idx+1;
    }
}
