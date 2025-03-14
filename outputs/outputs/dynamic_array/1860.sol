pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicarrayWithAssignment {
    uint[] public fieldDynamic1;
    constructor() {
        fieldDynamic1.push(0);
        fieldDynamic1.push(1);
    }
    function DynamicArraryWithAssignment() public returns(uint) {
        fieldDynamic1.push(2);
        fieldDynamic1.push(3);
        return fieldDynamic1[0];
    }
}
