pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_10{
    string s;
    function test() public pure returns (bool) {
        delete s;
        s = 'x';
        return true;
    }
}
