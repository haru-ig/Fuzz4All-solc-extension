pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedNestedArrayAssignment_2 {
    uint256[] public array;
    uint256[][] internal nestedArray;
    constructor () public {
       nestedArray[2][2] = 3;
       nestedArray[2][0] = 3;
    }
    function get() internal returns(uint256) {
        return nestedArray[2][0];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
}
contract FunctionalEquivalence_MutatedDynamically sizedAssignment_0 {
    uint256 val;
    address payable addr;
    function assign(uint256 data, uint256 i) public {
        return set(data, i);
    }
    function assign(uint256 data) public {
       val = data;
    }
    function get(uint256 i) public view returns(uint256) {
        return array[array[i]];
    }
    function set(uint256 data, uint256 i) internal returns (uint256){
        return set(data, i);
    }
}
contract FunctionalEquivalence_MutatedDynamically sizedAssignment_2 {
    uint256 val;
    address payable addr;
    function assign(uint256 data) public {
        return set1(data);
    }
    function assign(uint256 data, uint256 i) public
