pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_3{
    uint256[][] internal parentArray;
    uint256[] internal nestedArray;
    uint256[] internal staticChildArray;
    uint256 public value;
    constructor() public {
    }
    function copy(uint256[] memory parent, uint256[] memory child){
      parentArray[fromIndex][fromValue] = child;
    }
    function getArr(uint256 index, uint256 value) internal returns(uint256[]) {
        return value == 0? nestedArray : parentArray[index][fromValue];
    }
    function set(uint256[] memory arr, uint256 idx, uint256[] memory value) internal returns(uint256) {
        uint256 t = arr[idx];
        uint256 val = value[0];
        arr[idx] = value[1];
        value[1] = t;
        value[0] = val;
        return val;
    }
}
