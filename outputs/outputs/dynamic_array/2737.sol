pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Semantic_Same_Prog_Sem_Equiv_With_ABI {
    uint public x;
    uint public y;
    function set_x(uint in_value) public {
        x = in_value;
    }
    function get_x() public view returns (uint) {
        return x;
    }
    function update() public {
        SemanticEquality_ArrayMutations35_Semantics_Mods(SemanticEquality_ArrayMutations35_Semantics_Mods_Ext()).update();
        SemanticEquality_ArrayMutations35_Semantics_Mods_Ext()(SemanticEquality_ArrayMutations35_Semantics_Mods()).update();
        SemanticEquality_ArrayMutations35_Semantics_Mods(SemanticEquality_ArrayMutations35_Semantics_Mods_Ext()).update();
        SemanticEquality_ArrayMutations35_Semantics_Mods_Ext(SemanticEquality_ArrayMutations35_Semantics_Mods).update();
        SemanticEquality_ArrayMutations35_Semantics_Mods_Ext().update();
        SemanticEquality_ArrayMutations35_Semantics_Mods().update();
        SemanticEquality_ArrayMutations35_Semantics_Mods_Ext()().update();
        SemanticEquality_ArrayMutations35_Semantics_Mods()().update();
        SemanticEquality_ArrayMutations35_Semantics_Mods_Ext();SemanticEquality_ArrayMutations35_Semantics_Mods;SemanticEquality_ArrayMutations35_Semantics_Mods.update();
        SemanticEquality_ArrayMutations35_Semantics_Mods().update();
        SemanticEquality_ArrayMutations35_Semantics_Mods()();
        SemanticEquality_ArrayMutations35_Semantics_Mods()().update();
        SemanticEquality_ArrayMutations35_
