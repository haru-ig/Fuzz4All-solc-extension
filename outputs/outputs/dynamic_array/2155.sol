pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_14{
    function test() public pure returns (bool) {
        (bool b, bytes memory m) = SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_9.test();
        return b && m.length > 13;
    }
}
