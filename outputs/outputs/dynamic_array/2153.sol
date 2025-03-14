pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_9{
    function test() public pure returns (bool) {
        bool ret = false;
        SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_8 nestedInstance = new SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_8();
        for (uint i = 0; i < 5000; i++) {
            nestedInstance[i] = nestedInstance[i] == true? true : false;
        }
        return ret;
    }
}
