pragma solidity ^0.8.0;

contract SemanticEquality_ArrayMutations34_Modifier_Mod_Mod {
    string public x;
    modifier modifier1(){
        x = x + ", ";
        throw "";
    }
    function update() public {
        modifier1;
    }
}
