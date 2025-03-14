pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_8_Mutated {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5 + 1);
        size = 5 + 1;
        field[field.length] = 1;
        field[field.length + 1] = 2;
        size -= 2;
    }
}






function SeeminglyEquivalent() public new {
    SeeminglyEquivalent storage memory s = new SeeminglyEquivalent();
}


function FunctionalEquivalence_DynamicallySizedArrayAssignment_8() public new {
    FunctionalEquivalence_DynamicallySizedArrayAssignment_8 storage memory s = new FunctionalEquivalence_DynamicallySizedArrayAssignment_8();
}


function FunctionalEquivalence_DynamicallySizedArrayAssignment_8_Mutated() public new {
    FunctionalEquivalence_DynamicallySizedArrayAssignment_8_Mutated storage memory s = new FunctionalEquivalence_DynamicallySizedArrayAssignment_8_Mutated();
}





function testSeeminglyEquivalent(SeeminglyEquivalent memory e1, SeeminglyEquivalent storage s, uint128) public returns (SeeminglyEquivalent memory) {
    s.field = new uint256[](e1.field.length);
    s.field.length = e1.field.length;
    for (uint256 i = 0; i < s.field.length; i++)
        s.field[i] = e1.field[i];
    return s;
}


function testFunctionalEqDynamicSizedArray(FunctionalEquivalence_DynamicallySizedArrayAssignment_8 memory e1, FunctionalEquivalence_DynamicallySizedArrayAssignment_8 storage s, uint128) public returns (FunctionalEquivalence_DynamicallySizedArrayAssignment_8 memory, uint256) {
    s
