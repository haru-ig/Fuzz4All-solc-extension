pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicarrayWithAssignment {
    uint[] public fieldDynamic1;
    function DynamicArrayWithAssignment() public returns(uint) {
        fieldDynamic1.push(0);
        fieldDynamic1.push(1);
        fieldDynamic1.push(2);
        fieldDynamic1.push(3);
        return fieldDynamic1[fieldDynamic1.length-1];
    }
}
