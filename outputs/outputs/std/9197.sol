pragma solidity ^0.8.0;
contract MutatingProgram {
    uint256 public array;
    uint256 public constant my_value = 321;
    constructor() {
        array += my_value;
    }
    function incArray() public view returns (uint256) {
        return array + 1;
    }
}
address[] memory array = [1, 2, 3];
uint256[] memory subarrays = [1, 2, 3];
address[] memory copyArrays = [array, array, array, array, array];
address[] memory subcopyArrays = [subarrays, subarrays, subarrays, subarrays, subarrays];
address[] memory copySubArrays = [copyArrays, copyArrays, copyArrays, copyArrays, copyArrays];
uint256[] memory copySubArraysUnsigned = [array, array, array, array, array];
uint256[] memory subcopyArraysUnsigned = [subarrays, subarrays, subarrays, subarrays, subarrays];
uint256[] memory copySubArraysUnsigned = [copySubArraysUnsigned, copySubArraysUnsigned, copySubArraysUnsigned, copySubArraysUnsigned, copySubArraysUnsigned];
string[] memory copyStrArrays = ["1", "2", "3"];
uint[] memory copyArrUints = [321, 4, 1];
uint[] memory subArrUints = [321, 4, 1];
uint[] memory copyArrUintsUnsigned = [321, 4];
uint[] memory subArrUintsUnsigned = [321, 4];
uint[] memory copyArrUintsUnsigned2 = [321, 4];
uint[] memory subArrUintsUnsigned2 = [321, 4];
uint[] memory copyArrUintsUnsigned3 = [321];
uint[] memory subArrUintsUnsigned3 = [321];
