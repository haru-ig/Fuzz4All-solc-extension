pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicArrayWithoutAssignment {
    uint8[5] public fieldArray;
    constructor() public {
        fieldArray[0] = 0;
        fieldArray.push(1);
        fieldArray[1] = 1;
    }
    function DynamicArrayWithoutAssignment() public returns(uint8) {
        for(uint i = 0; i < fieldArray.length; i++) {
            fieldArray.push(i);
            fieldArray[0];
        }
        return fieldArray[0];
    }
}
