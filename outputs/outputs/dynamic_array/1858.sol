pragma solidity ^0.8.0;
contract SemanticallyEquivalentCalldataAndNonDynamicNonFixedarrayWithAssignmentNested {
    uint[] internal internalFieldNonEmptyNestedDynamicArray;
    constructor() {

        internal fieldNonEmptyNestedDynamicArray = [0];
        internal internalFieldNonEmptyNestedDynamicArray.push(1);
    }
    function CalldataArrayNested() public returns(uint) {
        internal internalFieldNonEmptyNestedDynamicArray.push(2);
        internal internalFieldNonEmptyNestedDynamicArray.push(3);
        return internal internalFieldNonEmptyNestedDynamicArray[0];
    }
}
