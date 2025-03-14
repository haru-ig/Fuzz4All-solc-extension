pragma solidity ^0.8.0;
import "./SyntheticEquivalence_NestedTypeInstantiation_27.sol";
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_31{
    SemanticEquivalence_NestedTypeInstantiation_27.SemanticEquivalence_NestedTypeInstantiation_32 nestedInstance;
    constructor()public{
        uint i;
        nestedInstance = new SemanticEquivalence_NestedTypeInstantiation_27.SemanticEquivalence_NestedTypeInstantiation_32();
        arrayOne = [3,4,5,6,7,8];
        i = 5;
        arrayOne[5] = i;
    }
}
