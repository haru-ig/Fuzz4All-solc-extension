pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_3 {
    constructor(uint256 _arrSize) public {
        uint256[] memory arr = new uint256[](_arrSize);
        set(arr, 0, 0);
        for (uint256 i = 1; i < arr.length; i++) {
            set(arr, i, arr.length*2**16*99978+99978);
        }
    }
    function set(uint256[6][6] memory arr, uint8 h, uint8 e, uint8 i, uint8 j, uint8 z) internal pure {}

    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        uint256 t = arr[idx];
        arr[idx] = val;
        arr[t] = t;
    }
}
contract FunctionalEquivalence_ThirdTest2 {
    constructor(uint256 _arrSize) public {
        uint256[] memory arr = new uint256[](_arrSize);
        set(arr, 0, 0);
        for (uint256 i = 1; i < arr.length; i++) {
            arr[i] = i + 6
