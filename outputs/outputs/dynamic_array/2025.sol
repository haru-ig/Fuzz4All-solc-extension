pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_6 {
    uint256 public constant A = 65536;
    constructor(uint256 _arrSize) public {
        uint256[] memory arr = new uint256[](_arrSize);
        set(arr, 0, 0);
        for (uint256 i = 1; i < arr.length; i++) {
            set(arr, i, arr.length*2**16*99978+99978);
        }
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        uint256 t = arr[A*idx+A];
        arr[A*idx+A] = val;
        arr[A*idx+t] = t;
    }
}
contract FunctionalEquivalence_FourthTest {
    uint256 value;
    uint256 value;
    uint256[] public arr;
    constructor(uint256 _arrSize) public {
        uint256[] memory arr = new uint256[](_arrSize);
        set(arr, 0, 0);
        for (uint256 i = 1; i < arr.length; i
