pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_6 {
    uint256[] internal parentArray;
    uint256 public childField;
    constructor() public {
        childField = 0;
    }
    function get(uint256[] memory arr, uint256 idx) internal returns(uint256) {
        uint256 t = nestedArray[idx];
        nestedArray[idx] = 0;
        return t;
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = nestedArray[idx];
        nestedArray[idx] = val;
        return t;
    }
}

pragma solidity ^0.7.0;

import "./functional_equivalence_nested_dynamically_sized_nested_array_assignment_2.sol";
import "./functional_equivalence_nested_dynamically_sized_nested_array_assignment_3.sol";
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_7 {

    function test_functional_equivalence_mutated_nested_dynamically_sized_nested_array_assignment_7() public {
        uint256[6] memory array = [0,2,4,8,16,32];

        uint256 memory nestedArray[32];
        for (uint256 i = 0; i < 32; i++){
            nestedArray[i] = array[i];
        }
        functional_equivalence_nested_dynamically_sized_nested_array_assignment_2
