pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicarrayWithAssignment {
    uint[] public fieldDynamic;

    constructor() public {
        fieldDynamic.push(0);
        fieldDynamic.push(1);
    }
    function DynamicArrayWithAssignment() public returns(uint) {
        fieldDynamic.push(2);
        fieldDynamic.push(3);
        return fieldDynamic[0];
    }
}
