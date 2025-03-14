pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_10{
    function test() public pure returns (bool) {
        SemanticEquivalence_NestedArrayAssignment_9_var[10] memory s;
        return test(s);
    }
    function test(SemanticEquivalence_NestedArrayAssignment_9_var[10] storage s) public pure returns (bool) {
        s[5] = 24;
        s[6] = 256;
        bool b = test(s);
        return test(s);
    }
}
