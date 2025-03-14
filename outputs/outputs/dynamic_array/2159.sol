pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_9_Fixed{
    uint256 public f;
    function f() public pure returns (bool) {
        uint256 data;
        (, data) = SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_9.test();
        f = data;
        uint256 data_;
        (, data_) = SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_9.test();
        return data == data_;
    }
}
